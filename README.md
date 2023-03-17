### Structure:

### tf-modules:

```
├── aws
│   ├── custom
│   │   ├── applications
│   │   │   ├── nginx
│   │   │   └── prometheus
│   │   ├── base
│   │   │   ├── README.md
│   │   │   ├── backend.tf
│   │   │   ├── locals.tf
│   │   │   ├── main.tf
│   │   │   ├── outputs.tf
│   │   │   ├── vars.tf
│   │   │   └── versions.tf
│   │   └── eks
│   │       └── cluster
│   └── native
│       ├── compute
│       │   └── ec2
│       ├── containers
│       │   └── eks
│       └── networking
│           ├── elastic_ips
│           ├── internet_gateway
│           ├── nat_gateway
│           ├── route_table
│           ├── subnet
│           └── vpc
└── gcp
    └── native
        ├── README.md
        └── example.tf
```

`tf-modules` directory contains the terrform modules. <br>
–`native` directory contains the base module of a service. <br>
–`custom` directory contains the modules where multiple base modules are clubbed together for an application. <br>
– each module has a `README.md` file which
describes more about the module.

### application:

```
├── tenant-01
│   └── infra
│       ├── aws
│       │   ├── account.hcl
│       │   ├── ap-south-1
│       │   │   ├── dev
│       │   │   ├── production
│       │   │   ├── staging
│       │   │   └── region.hcl
│       │   └── common.hcl
│       └── gcp
│           └── region
│               ├── dev
│               ├── production
│               └── staging
└── terragrunt.hcl
```

`application` directory is where I have deployed the infrastructure. <br>
– I have used terragrunt to apply the tf-modules which keeps the code DRY. <br>
– The variables are placed at different levels such as common, account, region, environment.
