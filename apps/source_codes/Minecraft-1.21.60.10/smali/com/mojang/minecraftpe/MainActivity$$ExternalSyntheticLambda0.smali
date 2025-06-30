.class public final synthetic Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->lambda$requestIntegrityToken$0$com-mojang-minecraftpe-MainActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
