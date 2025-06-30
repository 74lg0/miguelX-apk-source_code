.class public final synthetic Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object v0, p0, Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper;

    invoke-static {v0, v1, p1, p2}, Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper;->$r8$lambda$PE488Lh77P2jBYCk3e_mX64bvVo(Landroid/view/View;Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
