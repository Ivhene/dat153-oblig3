.class Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;
.super Ljava/lang/Object;
.source "InvocationsFinder.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/invocation/InvocationsFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveNotMatching"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
        "Lorg/mockito/invocation/Invocation;",
        ">;"
    }
.end annotation


# instance fields
.field private final wanted:Lorg/mockito/invocation/MatchableInvocation;


# direct methods
.method private constructor <init>(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 0
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;->wanted:Lorg/mockito/invocation/MatchableInvocation;

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/invocation/InvocationsFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p2, "x1"    # Lorg/mockito/internal/invocation/InvocationsFinder$1;

    .line 161
    invoke-direct {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;-><init>(Lorg/mockito/invocation/MatchableInvocation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 161
    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;->isOut(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    return p1
.end method

.method public isOut(Lorg/mockito/invocation/Invocation;)Z
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 170
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;->wanted:Lorg/mockito/invocation/MatchableInvocation;

    invoke-interface {v0, p1}, Lorg/mockito/invocation/MatchableInvocation;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
