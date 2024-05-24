.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;
.super Ljava/lang/Object;
.source "ReturnsSmartNulls.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThrowsSmartNullPointer"
.end annotation


# instance fields
.field private final location:Lorg/mockito/invocation/Location;

.field private final unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;


# direct methods
.method constructor <init>(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/invocation/Location;)V
    .locals 0
    .param p1, "unstubbedInvocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p2, "location"    # Lorg/mockito/invocation/Location;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 73
    iput-object p2, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->location:Lorg/mockito/invocation/Location;

    .line 74
    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 2
    .param p1, "currentInvocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartNull returned by this unstubbed method call on a mock:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->location:Lorg/mockito/invocation/Location;

    invoke-static {v0, v1}, Lorg/mockito/internal/exceptions/Reporter;->smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
