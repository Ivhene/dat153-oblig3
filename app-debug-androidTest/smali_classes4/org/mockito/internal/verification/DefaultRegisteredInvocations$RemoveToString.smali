.class Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;
.super Ljava/lang/Object;
.source "DefaultRegisteredInvocations.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/verification/DefaultRegisteredInvocations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveToString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
        "Lorg/mockito/invocation/Invocation;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/verification/DefaultRegisteredInvocations$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/verification/DefaultRegisteredInvocations$1;

    .line 64
    invoke-direct {p0}, Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 64
    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/verification/DefaultRegisteredInvocations$RemoveToString;->isOut(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    return p1
.end method

.method public isOut(Lorg/mockito/invocation/Invocation;)Z
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 67
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method
