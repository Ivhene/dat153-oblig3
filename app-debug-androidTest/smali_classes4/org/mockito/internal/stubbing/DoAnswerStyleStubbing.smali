.class Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;
.super Ljava/lang/Object;
.source "DoAnswerStyleStubbing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private stubbingStrictness:Lorg/mockito/quality/Strictness;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->stubbingStrictness:Lorg/mockito/quality/Strictness;

    .line 34
    return-void
.end method

.method getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    return-object v0
.end method

.method getStubbingStrictness()Lorg/mockito/quality/Strictness;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->stubbingStrictness:Lorg/mockito/quality/Strictness;

    return-object v0
.end method

.method isSet()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method setAnswers(Ljava/util/List;Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p2, "stubbingStrictness"    # Lorg/mockito/quality/Strictness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;",
            "Lorg/mockito/quality/Strictness;",
            ")V"
        }
    .end annotation

    .line 23
    .local p1, "answers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/stubbing/Answer<*>;>;"
    iput-object p2, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->stubbingStrictness:Lorg/mockito/quality/Strictness;

    .line 24
    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    return-void
.end method
