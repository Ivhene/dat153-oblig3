.class Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;
.super Lorg/junit/runners/model/Statement;
.source "DefaultInternalRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/runners/DefaultInternalRunner$1;->withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)V
    .locals 0
    .param p1, "this$1"    # Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    .line 41
    iput-object p1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    iput-object p2, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->val$target:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    invoke-static {v0}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->access$000(Lorg/mockito/internal/runners/DefaultInternalRunner$1;)Lorg/mockito/internal/junit/MockitoTestListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    iget-object v1, v0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->val$listenerSupplier:Lorg/mockito/internal/util/Supplier;

    invoke-interface {v1}, Lorg/mockito/internal/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/internal/junit/MockitoTestListener;

    invoke-static {v0, v1}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->access$002(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Lorg/mockito/internal/junit/MockitoTestListener;)Lorg/mockito/internal/junit/MockitoTestListener;

    .line 48
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    invoke-static {v1}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->access$000(Lorg/mockito/internal/runners/DefaultInternalRunner$1;)Lorg/mockito/internal/junit/MockitoTestListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockitoFramework;->addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 50
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->val$target:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/MockitoAnnotations;->openMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v0

    .local v0, "closeable":Ljava/lang/AutoCloseable;
    goto :goto_0

    .line 52
    .end local v0    # "closeable":Ljava/lang/AutoCloseable;
    :cond_0
    const/4 v0, 0x0

    .line 55
    .restart local v0    # "closeable":Ljava/lang/AutoCloseable;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 61
    :cond_1
    return-void

    .line 57
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 58
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    :cond_2
    throw v1
.end method
