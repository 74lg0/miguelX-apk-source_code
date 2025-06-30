.class Lcom/system/support/task/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/system/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/system/support/task/d;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method
