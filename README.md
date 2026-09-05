# WhatsApp AI Order Automation 🤖

An AI-powered WhatsApp order management automation built with n8n.

## 📌 Project Overview

This workflow allows customers to interact with an AI agent through WhatsApp.

The AI can:
- Answer customer questions
- Provide product information
- Collect customer details
- Collect order information
- Confirm orders
- Send WhatsApp replies automatically
- Escalate complex requests to a human
- Save confirmed orders to Google Sheets

## 🔄 Workflow

WhatsApp Customer
        ↓
WhatsApp Trigger
        ↓
AI Agent
        ↓
Is Order?
   ↙         ↘
Yes          No
 ↓            ↓
Log Order   AI Reply
 ↓
Is Escalation?
   ↙       ↘
Yes        No
 ↓          ↓
Notify     Continue
Manager
 ↓
Send WhatsApp Reply

## 🧠 AI Agent

The AI Agent is responsible for understanding customer messages and collecting the required information.

### Customer Information

- Name
- Phone
- Address

### Order Information

- Product
- Quantity
- Order Status

## 🛒 Order Confirmation

An order is logged only after the required customer and order information has been collected and confirmed.

Confirmed orders are saved in Google Sheets for CRM/order management.

## 🚨 Human Escalation

If the AI does not have enough information or cannot handle a customer's request:

1. The customer receives a message saying that the team will contact them shortly.
2. The manager/admin receives an alert.
3. The conversation can then be handled by a human.

## 🛠️ Technologies

- n8n
- WhatsApp Business API
- AI Agent
- Groq
- Google Sheets
- Google Docs
- Telegram

## ⚙️ Key Features

- AI-powered WhatsApp customer support
- Automated order collection
- Order confirmation
- Google Sheets CRM
- Human escalation
- Automated admin notification
- Structured AI output
- Conversation memory
- Error-aware workflow design

## 📸 Workflow Preview

Add your workflow screenshot here.

## 🔐 Security

API keys, access tokens, client secrets and other credentials are not included in this repository.

## 👨‍💻 Built By

Mohsin Ahmed
