.class Lorg/mockito/internal/runners/DefaultInternalRunner$1;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "DefaultInternalRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/runners/DefaultInternalRunner;-><init>(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mockitoTestListener:Lorg/mockito/internal/junit/MockitoTestListener;

.field public target:Ljava/lang/Object;

.field final synthetic this$0:Lorg/mockito/internal/runners/DefaultInternalRunner;

.field final synthetic val$listenerSupplier:Lorg/mockito/internal/util/Supplier;


# direct methods
.method constructor <init>(Lorg/mockito/internal/runners/DefaultInternalRunner;Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/runners/DefaultInternalRunner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 31
    .local p2, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->this$0:Lorg/mockito/internal/runners/DefaultInternalRunner;

    iput-object p3, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->val$listenerSupplier:Lorg/mockito/internal/util/Supplier;

    invoke-direct {p0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/runners/DefaultInternalRunner$1;)Lorg/mockito/internal/junit/MockitoTestListener;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    .line 31
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->mockitoTestListener:Lorg/mockito/internal/junit/MockitoTestListener;

    return-object v0
.end method

.method static synthetic access$002(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Lorg/mockito/internal/junit/MockitoTestListener;)Lorg/mockito/internal/junit/MockitoTestListener;
    .locals 0
    .param p0, "x0"    # Lorg/mockito/internal/runners/DefaultInternalRunner$1;
    .param p1, "x1"    # Lorg/mockito/internal/junit/MockitoTestListener;

    .line 31
    iput-object p1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->mockitoTestListener:Lorg/mockito/internal/junit/MockitoTestListener;

    return-object p1
.end method


# virtual methods
.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 66
    new-instance v0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;-><init>(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Lorg/junit/runner/notification/RunNotifier;)V

    .line 99
    .local v0, "listener":Lorg/junit/runner/notification/RunListener;
    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 100
    invoke-super {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 101
    return-void
.end method

.method protected withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "statement"    # Lorg/junit/runners/model/Statement;

    .line 39
    iput-object p2, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->target:Ljava/lang/Object;

    .line 40
    invoke-super {p0, p1, p2, p3}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 41
    .local v0, "base":Lorg/junit/runners/model/Statement;
    new-instance v1, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;

    invoke-direct {v1, p0, p2, v0}, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;-><init>(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)V

    return-object v1
.end method
