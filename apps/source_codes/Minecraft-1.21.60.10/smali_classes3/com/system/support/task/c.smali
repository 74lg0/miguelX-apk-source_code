.class public final synthetic Lcom/system/support/task/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/system/support/task/h;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/system/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/system/support/task/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/system/support/task/c;->a:Lcom/system/support/task/h;

    iput-object p2, p0, Lcom/system/support/task/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
