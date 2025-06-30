.class public final synthetic Lcom/system/support/task/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/system/support/task/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/system/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/system/support/task/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/system/support/task/b;->a:Lcom/system/support/task/h;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
