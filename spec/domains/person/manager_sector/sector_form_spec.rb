require 'rails_helper'

describe "ManagerSector::SectorForm" do


  subject do
    FactoryGirl.build(:sector)
  end

  let(:new_sector) do
    FactoryGirl.build(:new_sector)
  end

  let(:child_sector) do
    FactoryGirl.build(:child_sector)
  end

  let(:edited_record) do
    FactoryGirl.build(:edited_sector)
  end

  let(:collections_sector) do
    FactoryGirl.build_list(:sector, 25)
  end

  context 'Validações de registro' do

    describe '#valid?' do

      it 'Validações estão presentes?' do
        new_sector.save

        expect(new_sector.errors.has_key?(:name)).to be true
        expect(new_sector.errors.has_key?(:prefex)).to be true

      end

      it 'Atributos válidos' do
        expect(subject.save).to be true
      end

      it 'Atributos inválidos' do
        expect(new_sector.save).not_to be true
      end

    end


    describe '#save' do

      it "Criando registro válido" do
        expect(subject.save).to be true
      end

      it "Criando sector com pai" do
        child_sector.save
        expect(child_sector.save).to be true
      end

      it "Negando criação de registro inválido" do
        new_sector.save

        expect(new_sector.save).not_to be true
      end

      it "Negando criação de registro duplicado" do

        last_record = ActiveCodhab::Person::Sector.last

        new_record = new_sector
        new_record.name = last_record.name
        new_record.prefex = last_record.prefex
        new_record.acron = "123"
        new_record.save

        expect(new_record.errors.has_key?(:name)).to be true
        expect(new_record.errors.has_key?(:prefex)).to be true
      end

      it "Atualizando registro válido" do
        subject.save

        record_updated = ActiveCodhab::Person::ManagerSector::SectorForm.new
        record_updated.find(subject.record.id)
        record_updated.name = Faker::Job.field

        expect(record_updated.save).to be true
      end

      it "Atualizando registro inválido" do
        record_updated = ActiveCodhab::Person::ManagerSector::SectorForm.new
        record_updated.find(ActiveCodhab::Person::Sector.last.id)
        record_updated.name = nil

        expect(record_updated.save).not_to be true
      end

      it "Atualizando registro e duplicando-o" do
        subject.save

        new_record = FactoryGirl.build(:sector)
        new_record.name = subject.record.name

        new_record.save

        expect(new_record.errors.has_key?(:name)).to be true

      end

    end



  end
end
