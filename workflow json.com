{
  "name": "WhatsApp AI Order Automation",
  "description": "An AI-powered WhatsApp order management automation built with n8n.",
  "overview": "This workflow allows customers to interact with an AI agent through WhatsApp. The AI answers customer questions, provides product information, collects customer details, collects order information, confirms orders, and handles human escalation.",
  "workflow": {
    "trigger": "WhatsApp Trigger",
    "ai_agent": "AI Agent",
    "decision_1": {
      "node": "Is Order?",
      "true": {
        "action": "Log Order",
        "destination": "Google Sheets"
      },
      "false": {
        "action": "AI Reply"
      }
    },
    "decision_2": {
      "node": "Is Escalation?",
      "true": {
        "action": "Notify Manager",
        "destination": "Telegram"
      },
      "false": {
        "action": "Continue"
      }
    },
    "customer_reply": "Send WhatsApp Reply"
  },
  "customer_information": [
    "Name",
    "Phone",
    "Address"
  ],
  "order_information": [
    "Product",
    "Quantity",
    "Order Status"
  ],
  "features": [
    "AI-powered WhatsApp customer support",
    "Automated order collection",
    "Order confirmation",
    "Google Sheets order management",
    "Human escalation",
    "Automated admin notification",
    "Structured AI output",
    "Conversation memory"
  ],
  "technologies": [
    "n8n",
    "WhatsApp Business API",
    "AI Agent",
    "Groq",
    "Google Sheets",
    "Google Docs",
    "Telegram"
  ],
  "human_escalation": {
    "when": "The AI does not have enough information or cannot handle a customer's request.",
    "customer_action": "Tell the customer that the team will contact them shortly.",
    "admin_action": "Send an alert to the manager/admin."
  },
  "order_confirmation": {
    "condition": "Required customer and order information must be collected and confirmed.",
    "action": "Save the confirmed order to Google Sheets."
  },
  "security": {
    "credentials_included": false,
    "note": "API keys, access tokens, client secrets and other credentials should not be included in the repository."
  },
  "repository_structure": {
    "workflow/whatsapp-order-automation.json": "n8n workflow file",
    "screenshots/workflow.png": "Workflow screenshot",
    "README.md": "Project documentation"
  },
  "author": "Mohsin Ahmed"
}
