.class Lhm/mod/update/up1$1;
.super Ljava/lang/Object;
.source "up1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhm/mod/update/up1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhm/mod/update/up1;

.field final synthetic val$apkUrl:Ljava/lang/String;

.field final synthetic val$author:Ljava/lang/String;

.field final synthetic val$canClose:Z

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$icon:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lhm/mod/update/up1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lhm/mod/update/up1$1;->this$0:Lhm/mod/update/up1;

    iput-object p2, p0, Lhm/mod/update/up1$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lhm/mod/update/up1$1;->val$icon:Ljava/lang/String;

    iput-object p4, p0, Lhm/mod/update/up1$1;->val$author:Ljava/lang/String;

    iput-object p5, p0, Lhm/mod/update/up1$1;->val$packageName:Ljava/lang/String;

    iput-object p6, p0, Lhm/mod/update/up1$1;->val$content:Ljava/lang/String;

    iput-object p7, p0, Lhm/mod/update/up1$1;->val$apkUrl:Ljava/lang/String;

    iput-boolean p8, p0, Lhm/mod/update/up1$1;->val$canClose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 83
    iget-object v0, p0, Lhm/mod/update/up1$1;->this$0:Lhm/mod/update/up1;

    invoke-static {v0}, Lhm/mod/update/up1;->access$000(Lhm/mod/update/up1;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lhm/mod/update/up1$1;->val$title:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lhm/mod/update/up1$1;->val$icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lhm/mod/update/up1$1;->val$author:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lhm/mod/update/up1$1;->val$packageName:Ljava/lang/String;

    iget-object v6, p0, Lhm/mod/update/up1$1;->val$content:Ljava/lang/String;

    iget-object v7, p0, Lhm/mod/update/up1$1;->val$apkUrl:Ljava/lang/String;

    iget-boolean v8, p0, Lhm/mod/update/up1$1;->val$canClose:Z

    invoke-static/range {v1 .. v8}, Lhm/mod/update/up2;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
