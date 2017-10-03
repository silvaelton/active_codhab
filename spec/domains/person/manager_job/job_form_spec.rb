require 'rails_helper'

describe "ManagerJob::JobForm" do

  subject do
    FactoryGirl.build(:job)
  end

  let(:new_job) do
    FactoryGirl.build(:new_job)
  end

  let(:edited_record) do
    FactoryGirl.build(:edited_job)
  end

  let(:collections_job) do
    FactoryGirl.build_list(:job, 25)
  end

  context 'Validações de registro' do

    describe '#valid?' do

      it 'Validações estão presentes?' do
        new_job.save

        expect(new_job.errors.has_key?(:name)).to be true
        expect(new_job.errors.has_key?(:code)).to be true
        expect(new_job.errors.has_key?(:status)).to be true
        expect(new_job.errors.has_key?(:salary)).to be true
        expect(new_job.errors.has_key?(:function_code)).to be true
      end

      it 'Atributos válidos' do
        expect(subject.save).to be true
      end

      it 'Atributos inválidos' do
        expect(new_job.save).not_to be true
      end

    end


    describe '#save' do

      it "Criando registro válido" do
        expect(subject.save).to be true
      end

      it "Negando criação de registro inválido" do
        new_job.save

        expect(new_job.save).not_to be true
      end

      it "Negando criação de registro duplicado" do
        subject.save

        last_record = subject.record

        new_record = new_job
        new_record.name = last_record.name
        new_record.save

        expect(new_record.errors.has_key?(:name)).to be true
      end

      it "Atualizando registro válido" do
        subject.save

        record_updated = ActiveCodhab::Person::ManagerJob::JobForm.new
        record_updated.find(subject.record.id)
        record_updated.name = Faker::Name.name

        expect(record_updated.save).to be true
      end

      it "Atualizando registro inválido" do
        subject.save

        record_updated = ActiveCodhab::Person::ManagerJob::JobForm.new
        record_updated.find(subject.record.id)
        record_updated.name = nil

        expect(record_updated.save).not_to be true
      end

      it "Atualizando registro e duplicando-o" do
        subject.save

        new_record = FactoryGirl.build(:job)
        new_record.name = subject.record.name

        new_record.save

        expect(new_record.errors.has_key?(:name)).to be true

      end

    end



  end
end
