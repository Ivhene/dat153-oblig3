.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;
.super Ljava/lang/Object;
.source "ReturnsMocks.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5dbf7f5928ef7f53L


# instance fields
.field private final delegate:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->delegate:Lorg/mockito/stubbing/Answer;

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->delegate:Lorg/mockito/stubbing/Answer;

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    .local v0, "defaultReturnValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 24
    return-object v0

    .line 27
    :cond_0
    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;

    invoke-direct {v1, p0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;-><init>(Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;)V

    invoke-static {p1, v1}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->returnTypeForMockWithCorrectGenerics(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
