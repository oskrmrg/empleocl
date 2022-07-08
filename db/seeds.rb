# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Añadiendo nuevas Vacante disponibles...'

Empleo.create(
    [
        {
            titulo: 'Analista de RR.HH.',
            descripcion: 'Importante empresa de retail requiere persona para el área de Recursos Humanos como: ANALISTA DE RRHH. Sus principales funciones serán prestar apoyo en elaboración de contratos, finiquitos , licencias medicas, control de asistencia, vacaciones, entre otros.',
            vacantes: 4,
            salario: '650.000',
            fecha_inic: '2022-07-24',
            tipo: 'Presencial',
            ubicacion: 'Valdivia, Los Lagos',
        },
        {
            titulo: 'Analista de Contabilidad',
            descripcion: 'Profesionales con alta motivación y vocación por el rubro de la Contabilidad, con deseo de crecer profesionalmente y generar ambientes gratos de trabajo. Adicionalmente, se espera que el profesional posea habilidades para trabajar en ambientes cambiantes y colaborativos, que sean resilientes y que desarrollen habilidades de negociación y conciliación.',
            vacantes: 2,
            salario: '850.000',
            fecha_inic: '2022-07-30',
            tipo: 'Teletrabajo',
            ubicacion: 'Puerto Varas, Los Ríos',
        },
        {
            titulo: 'Administrativo de Bodega',
            descripcion: 'Prestigioso retail de vestuario con presencia a nivel nacional, se encuentra en búsqueda de Encargado de Bodega para su tienda de Temuco. Con el objetivo de mantener la bodega en orden y distribuir mercadería en los pisos de la Tienda.',
            vacantes: 2,
            salario: '600.000',
            fecha_inic: '2022-07-30',
            tipo: 'Presencial',
            ubicacion: 'Temuco, La Araucania',
        },
        {
            titulo: 'Técnico de Mesa de Ayuda',
            descripcion: 'Empresa de Soluciones Integrales en la ciudad de Concepción busca incorporar a Técnico de Mesa de Ayuda. Su misión será proveer soporte remoto a clientes, proporcionando respuesta de forma oportuna y considerando los diferentes servicios que tiene disponible la empresa.',
            vacantes: 3,
            salario: '750.000',
            fecha_inic: '2022-07-30',
            tipo: 'Teletrabajo',
            ubicacion: 'Concepción, Bío-Bío',
        }
    ]
)

puts 'finalizado!!!'