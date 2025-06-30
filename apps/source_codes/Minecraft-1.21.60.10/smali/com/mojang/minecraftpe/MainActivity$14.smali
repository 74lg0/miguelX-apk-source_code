.class Lcom/mojang/minecraftpe/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setTextBoxBackend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$14;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mCurrentTextMirror:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->val$text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setCaretPosition(I)V

    return-void
.end method
