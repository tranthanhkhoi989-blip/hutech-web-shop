<div id="shop-chatbot" class="shop-chatbot">
    <button type="button" id="shop-chatbot-toggle" class="shop-chatbot-toggle" aria-label="Open chat support">
        Chat
    </button>
    <div id="shop-chatbot-panel" class="shop-chatbot-panel" aria-hidden="true">
        <div class="shop-chatbot-header">
            <strong>ThemeBot</strong>
            <button type="button" id="shop-chatbot-close" class="shop-chatbot-close" aria-label="Close chat">x</button>
        </div>
        <div id="shop-chatbot-messages" class="shop-chatbot-messages">
            <div class="shop-chatbot-message bot">Hello. How can I help with your order today?</div>
        </div>
        <div class="shop-chatbot-input-row">
            <input id="shop-chatbot-input" type="text" placeholder="Type a message..." />
            <button type="button" id="shop-chatbot-send">Send</button>
        </div>
    </div>
</div>
<style>
.shop-chatbot { position: fixed; right: 16px; bottom: 16px; z-index: 9999; font-family: Arial, sans-serif; }
.shop-chatbot-toggle { border: 0; border-radius: 999px; padding: 10px 16px; background: #1f2937; color: #fff; cursor: pointer; font-weight: 600; }
.shop-chatbot-panel { width: 320px; max-width: calc(100vw - 24px); margin-top: 10px; border: 1px solid #d1d5db; border-radius: 12px; background: #fff; box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15); display: none; overflow: hidden; }
.shop-chatbot-panel.open { display: block; }
.shop-chatbot-header { background: #111827; color: #fff; padding: 10px 12px; display: flex; justify-content: space-between; align-items: center; }
.shop-chatbot-close { border: 0; background: transparent; color: #fff; font-size: 16px; cursor: pointer; }
.shop-chatbot-messages { height: 220px; overflow-y: auto; padding: 10px; background: #f9fafb; }
.shop-chatbot-message { margin-bottom: 8px; padding: 8px 10px; border-radius: 10px; max-width: 85%; font-size: 13px; line-height: 1.4; }
.shop-chatbot-message.bot { background: #e5e7eb; color: #111827; }
.shop-chatbot-message.user { background: #2563eb; color: #fff; margin-left: auto; }
.shop-chatbot-input-row { display: flex; gap: 8px; padding: 10px; border-top: 1px solid #e5e7eb; }
.shop-chatbot-input-row input { flex: 1; border: 1px solid #d1d5db; border-radius: 8px; padding: 8px; font-size: 13px; }
.shop-chatbot-input-row button { border: 0; border-radius: 8px; padding: 8px 12px; background: #111827; color: #fff; cursor: pointer; }
</style>
<script>
(function () {
    var toggleBtn = document.getElementById("shop-chatbot-toggle");
    var panel = document.getElementById("shop-chatbot-panel");
    var closeBtn = document.getElementById("shop-chatbot-close");
    var sendBtn = document.getElementById("shop-chatbot-send");
    var input = document.getElementById("shop-chatbot-input");
    var messages = document.getElementById("shop-chatbot-messages");
    if (!toggleBtn || !panel || !closeBtn || !sendBtn || !input || !messages) return;

    var replies = [
        "You can ask me about products, shipping, and payment.",
        "For order support, please include your order number.",
        "I can help you find the right category quickly.",
        "Need checkout help? I can guide you step by step."
    ];

    function appendMessage(text, type) {
        var item = document.createElement("div");
        item.className = "shop-chatbot-message " + type;
        item.textContent = text;
        messages.appendChild(item);
        messages.scrollTop = messages.scrollHeight;
    }

    function toggleOpen(forceOpen) {
        var open = typeof forceOpen === "boolean" ? forceOpen : !panel.classList.contains("open");
        panel.classList.toggle("open", open);
        panel.setAttribute("aria-hidden", open ? "false" : "true");
    }

    function handleSend() {
        var value = input.value.trim();
        if (!value) return;
        appendMessage(value, "user");
        input.value = "";
        var reply = replies[Math.floor(Math.random() * replies.length)];
        window.setTimeout(function () { appendMessage(reply, "bot"); }, 250);
    }

    toggleBtn.addEventListener("click", function () { toggleOpen(); });
    closeBtn.addEventListener("click", function () { toggleOpen(false); });
    sendBtn.addEventListener("click", handleSend);
    input.addEventListener("keydown", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            handleSend();
        }
    });
})();
</script>
