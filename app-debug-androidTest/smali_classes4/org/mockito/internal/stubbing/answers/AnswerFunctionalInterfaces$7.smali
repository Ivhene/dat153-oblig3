.class Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$7;
.super Ljava/lang/Object;
.source "AnswerFunctionalInterfaces.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/Answer4;)Lorg/mockito/stubbing/Answer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$answer:Lorg/mockito/stubbing/Answer4;


# direct methods
.method constructor <init>(Lorg/mockito/stubbing/Answer4;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$7;->val$answer:Lorg/mockito/stubbing/Answer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 5
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$7;->val$answer:Lorg/mockito/stubbing/Answer4;

    .line 163
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v1

    .line 164
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v2

    .line 165
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v3

    .line 166
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v4

    .line 162
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mockito/stubbing/Answer4;->answer(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
