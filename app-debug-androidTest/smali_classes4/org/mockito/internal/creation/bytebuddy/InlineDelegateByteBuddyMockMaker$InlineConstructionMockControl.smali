.class Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;
.super Ljava/lang/Object;
.source "InlineDelegateByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/plugins/MockMaker$ConstructionMockControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InlineConstructionMockControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private final handlerFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Object;",
            "Lorg/mockito/MockedConstruction$Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mockInitializer:Lorg/mockito/MockedConstruction$MockInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final settingsFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;>;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Object;",
            "Lorg/mockito/MockedConstruction$Context;",
            ">;>;)V"
        }
    .end annotation

    .line 737
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "settingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/mock/MockCreationSettings<TT;>;>;"
    .local p4, "handlerFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/invocation/MockHandler<TT;>;>;"
    .local p5, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    .local p6, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/BiConsumer<Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;>;>;"
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->this$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->all:Ljava/util/List;

    .line 738
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->type:Ljava/lang/Class;

    .line 739
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->settingsFactory:Ljava/util/function/Function;

    .line 740
    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->handlerFactory:Ljava/util/function/Function;

    .line 741
    iput-object p5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->mockInitializer:Lorg/mockito/MockedConstruction$MockInitializer;

    .line 742
    iput-object p6, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->interceptors:Ljava/util/Map;

    .line 743
    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;Ljava/util/Map;Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Ljava/util/function/Function;
    .param p4, "x3"    # Ljava/util/function/Function;
    .param p5, "x4"    # Lorg/mockito/MockedConstruction$MockInitializer;
    .param p6, "x5"    # Ljava/util/Map;
    .param p7, "x6"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;

    .line 718
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl<TT;>;"
    invoke-direct/range {p0 .. p6}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .line 785
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->interceptors:Ljava/util/Map;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 797
    return-void

    .line 786
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not deregister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->type:Ljava/lang/Class;

    .line 789
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as a static mock since it is not currently registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To register a static mock, use Mockito.mockStatic("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->type:Ljava/lang/Class;

    .line 793
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 787
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable()V
    .locals 4

    .line 752
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->interceptors:Ljava/util/Map;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->type:Ljava/lang/Class;

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl$$ExternalSyntheticLambda0;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 781
    return-void

    .line 773
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->type:Ljava/lang/Class;

    .line 776
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", static mocking is already registered in the current thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "To create a new mock, the existing static mock registration must be deregistered"

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 774
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 802
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->all:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 747
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->type:Ljava/lang/Class;

    return-object v0
.end method

.method synthetic lambda$enable$0$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl(Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "context"    # Lorg/mockito/MockedConstruction$Context;

    .line 755
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl<TT;>;"
    move-object v0, p2

    check-cast v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;

    iget v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->count:I

    invoke-static {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->access$302(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;I)I

    .line 756
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->handlerFactory:Ljava/util/function/Function;

    .line 758
    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/MockHandler;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->settingsFactory:Ljava/util/function/Function;

    .line 759
    invoke-interface {v2, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/mock/MockCreationSettings;

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 760
    .local v0, "interceptor":Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->this$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-static {v1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->access$400(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;)Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    move-object v1, p1

    .line 764
    .local v1, "cast":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->mockInitializer:Lorg/mockito/MockedConstruction$MockInitializer;

    invoke-interface {v2, v1, p2}, Lorg/mockito/MockedConstruction$MockInitializer;->prepare(Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    .end local v1    # "cast":Ljava/lang/Object;, "TT;"
    nop

    .line 770
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->all:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    return-void

    .line 765
    :catchall_0
    move-exception v1

    .line 766
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->this$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-static {v2}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->access$400(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;)Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    const-string v3, "Could not initialize mocked construction"

    invoke-direct {v2, v3, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
