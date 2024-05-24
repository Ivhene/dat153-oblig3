.class Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;
.super Ljava/lang/Object;
.source "InlineDelegateByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/plugins/MockMaker$StaticMockControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineStaticMockControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/plugins/MockMaker$StaticMockControl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final handler:Lorg/mockito/invocation/MockHandler;

.field private final interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/Map;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)V
    .locals 0
    .param p4, "handler"    # Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")V"
        }
    .end annotation

    .line 676
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    .local p3, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->type:Ljava/lang/Class;

    .line 678
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->interceptors:Ljava/util/Map;

    .line 679
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->settings:Lorg/mockito/mock/MockCreationSettings;

    .line 680
    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->handler:Lorg/mockito/invocation/MockHandler;

    .line 681
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/util/Map;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lorg/mockito/mock/MockCreationSettings;
    .param p4, "x3"    # Lorg/mockito/invocation/MockHandler;
    .param p5, "x4"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;

    .line 662
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;-><init>(Ljava/lang/Class;Ljava/util/Map;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .line 704
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->interceptors:Ljava/util/Map;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    return-void

    .line 705
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not deregister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->type:Ljava/lang/Class;

    .line 708
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

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->type:Ljava/lang/Class;

    .line 712
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

    .line 706
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable()V
    .locals 5

    .line 690
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->interceptors:Ljava/util/Map;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->type:Ljava/lang/Class;

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->handler:Lorg/mockito/invocation/MockHandler;

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->settings:Lorg/mockito/mock/MockCreationSettings;

    invoke-direct {v2, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 700
    return-void

    .line 692
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->type:Ljava/lang/Class;

    .line 695
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

    .line 693
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 685
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;, "Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineStaticMockControl;->type:Ljava/lang/Class;

    return-object v0
.end method
