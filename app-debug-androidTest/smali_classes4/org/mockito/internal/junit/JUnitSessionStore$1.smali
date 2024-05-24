.class Lorg/mockito/internal/junit/JUnitSessionStore$1;
.super Lorg/junit/runners/model/Statement;
.source "JUnitSessionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/junit/JUnitSessionStore;->createStatement(Lorg/junit/runners/model/Statement;Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/junit/JUnitSessionStore;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mockito/internal/junit/JUnitSessionStore;Ljava/lang/String;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/junit/JUnitSessionStore;

    .line 27
    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->this$0:Lorg/mockito/internal/junit/JUnitSessionStore;

    iput-object p2, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->val$target:Ljava/lang/Object;

    iput-object p4, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method

.method private evaluateSafely(Lorg/junit/runners/model/Statement;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "base"    # Lorg/junit/runners/model/Statement;

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    .local v0, "throwable":Ljava/lang/Throwable;
    return-object v0
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->this$0:Lorg/mockito/internal/junit/JUnitSessionStore;

    invoke-static {v0}, Lorg/mockito/internal/junit/JUnitSessionStore;->access$000(Lorg/mockito/internal/junit/JUnitSessionStore;)Lorg/mockito/MockitoSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->this$0:Lorg/mockito/internal/junit/JUnitSessionStore;

    .line 33
    invoke-static {}, Lorg/mockito/Mockito;->mockitoSession()Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->val$methodName:Ljava/lang/String;

    .line 34
    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->name(Ljava/lang/String;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->this$0:Lorg/mockito/internal/junit/JUnitSessionStore;

    iget-object v2, v2, Lorg/mockito/internal/junit/JUnitSessionStore;->strictness:Lorg/mockito/quality/Strictness;

    .line 35
    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    new-instance v2, Lorg/mockito/internal/session/MockitoSessionLoggerAdapter;

    iget-object v3, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->this$0:Lorg/mockito/internal/junit/JUnitSessionStore;

    .line 36
    invoke-static {v3}, Lorg/mockito/internal/junit/JUnitSessionStore;->access$100(Lorg/mockito/internal/junit/JUnitSessionStore;)Lorg/mockito/plugins/MockitoLogger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mockito/internal/session/MockitoSessionLoggerAdapter;-><init>(Lorg/mockito/plugins/MockitoLogger;)V

    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->logger(Lorg/mockito/session/MockitoSessionLogger;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->val$target:Ljava/lang/Object;

    .line 37
    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Lorg/mockito/session/MockitoSessionBuilder;->startMocking()Lorg/mockito/MockitoSession;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lorg/mockito/internal/junit/JUnitSessionStore;->access$002(Lorg/mockito/internal/junit/JUnitSessionStore;Lorg/mockito/MockitoSession;)Lorg/mockito/MockitoSession;

    .line 39
    const/4 v0, 0x0

    .local v0, "closeable":Ljava/lang/AutoCloseable;
    goto :goto_0

    .line 41
    .end local v0    # "closeable":Ljava/lang/AutoCloseable;
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->val$target:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/MockitoAnnotations;->openMocks(Ljava/lang/Object;)Ljava/lang/AutoCloseable;

    move-result-object v0

    .line 43
    .restart local v0    # "closeable":Ljava/lang/AutoCloseable;
    :goto_0
    iget-object v1, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0, v1}, Lorg/mockito/internal/junit/JUnitSessionStore$1;->evaluateSafely(Lorg/junit/runners/model/Statement;)Ljava/lang/Throwable;

    move-result-object v1

    .line 44
    .local v1, "testFailure":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitSessionStore$1;->this$0:Lorg/mockito/internal/junit/JUnitSessionStore;

    invoke-static {v2}, Lorg/mockito/internal/junit/JUnitSessionStore;->access$000(Lorg/mockito/internal/junit/JUnitSessionStore;)Lorg/mockito/MockitoSession;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/mockito/MockitoSession;->finishMocking(Ljava/lang/Throwable;)V

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 48
    :cond_1
    if-nez v1, :cond_2

    .line 51
    return-void

    .line 49
    :cond_2
    throw v1
.end method
