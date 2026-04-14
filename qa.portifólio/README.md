# 🧪 QA Portfolio – Testes em Aplicação Web (E-commerce)

> Portfólio prático de Quality Assurance com foco em testes manuais, BDD e identificação de bugs em ambiente simulado real.

---

## 👨‍💻 Sobre mim

Profissional de QA com **4 anos de experiência** em testes manuais e automação, atuando em sistemas web e ambientes corporativos.

Tenho experiência sólida com **Cypress** e **Selenium**, escrita de cenários em **BDD/Gherkin**, análise de comportamento de interface e documentação estruturada de bugs.

Meu foco está em garantir qualidade de ponta a ponta — desde a validação de requisitos até a entrega de software com menos risco e melhor experiência para o usuário.

---

## 📌 Sobre o projeto

Este projeto demonstra na prática minhas habilidades em QA através da validação do **[SauceDemo](https://www.saucedemo.com/)** — uma aplicação web de e-commerce amplamente utilizada pela comunidade de QA para simulação de ambientes reais de teste.

Foram aplicadas técnicas de **testes manuais**, escrita de **cenários em BDD** e identificação de **inconsistências no sistema**, com foco em comportamento do usuário e experiência de uso.

---

## 🎯 Objetivos

- Validar funcionalidades críticas de um sistema web de e-commerce
- Aplicar boas práticas de QA em ambiente controlado
- Identificar falhas e inconsistências com documentação estruturada
- Demonstrar escrita de cenários BDD de forma clara e rastreável

---

## 🧩 Escopo de testes

| Funcionalidade | Status |
|---|---|
| Login (válido e inválido) | ✅ Testado |
| Carrinho de compras | ✅ Testado |
| Checkout (fluxo completo) | ✅ Testado |
| Validação de campos obrigatórios | ✅ Testado |

---

## 🧪 Tipos de testes aplicados

- **Testes funcionais** — validação do comportamento esperado do sistema
- **Testes negativos** — entradas inválidas e campos obrigatórios em branco
- **Testes exploratórios** — análise de comportamentos não documentados
- **Validação de regras de negócio** — fluxo de compra completo
- **Análise de UI/UX** — comportamento visual da interface em situações de erro

---

## 📊 Resultados

| Métrica | Resultado |
|---|---|
| Cenários escritos | 5 (principais fluxos) |
| Cenários executados | 5 (principais fluxos) |
| Bugs identificados | 1 (severidade alta) |
| Funcionalidades cobertas | 3 (Login, Carrinho, Checkout) |

---

## 🐞 Bug identificado

**[BUG-001] Validação incorreta de campos no checkout**

- **Severidade:** Alta
- **Impacto:** Experiência do usuário comprometida
- **Descrição:** O sistema destaca múltiplos campos como erro simultaneamente, mesmo quando apenas um campo está inválido. Isso pode confundir o usuário e gerar abandono no fluxo de compra.

📄 Documentação completa: [`/bug-reports/bug-checkout-validation.md`](./bug-reports/bug-checkout-validation.md)

---

## 📁 Estrutura do projeto

```
qa-portfolio/
│
├── test-cases/
│   ├── login.feature          # Cenários de login (válido e inválido)
│   ├── cart.feature           # Cenários do carrinho de compras
│   └── checkout.feature       # Cenários do fluxo de checkout
│
├── bug-reports/
│   └── bug-checkout-validation.md   # Bug report detalhado
│
├── evidence/
│   └── execution-results.xlsx       # Evidências de execução (opcional)
│
└── README.md
```

---

## 🧠 Abordagem BDD

Os cenários foram escritos em **Gherkin** seguindo o padrão **Given / When / Then**, descrevendo o comportamento esperado do sistema do ponto de vista do usuário — facilitando a comunicação entre QA, Dev e negócio.

**Exemplo:**
```gherkin
Scenario: Login com senha não preenchida
  Given que o usuário está na página de login
  When ele preenche o campo usuário com "standard_user"
  And não preenche o campo senha
  And clica no botão de login
  Then deve visualizar a mensagem "Password is required"
```

---

## 🚀 Ferramentas e tecnologias

| Ferramenta | Uso |
|---|---|
| **Cypress** | Automação de testes E2E |
| **Selenium** | Automação de testes web |
| **Gherkin / BDD** | Escrita de cenários de teste |
| **GitHub** | Versionamento e portfólio |
| **Chrome DevTools** | Análise de comportamento e evidências |

---

## 📬 Contato

- 💼 LinkedIn: [Claudio Marcel](https://www.linkedin.com/in/claudio-marcel-674933163/details/skills/)
- 🐙 GitHub: *(adicione seu perfil aqui)*

---

## 🧠 Aprendizados

- Identificação de falhas de validação em formulários
- Importância da análise de comportamento além do esperado
- Aplicação prática de BDD em cenários reais
- Escrita de bugs com foco em impacto no usuário

---

> 💡 *Este projeto foi desenvolvido com fins de demonstração prática de habilidades em QA, utilizando o SauceDemo como aplicação de referência — plataforma criada especificamente para prática e portfólios da área.*
