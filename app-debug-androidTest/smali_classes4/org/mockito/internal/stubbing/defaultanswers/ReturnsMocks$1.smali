.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;
.super Ljava/lang/Object;
.source "ReturnsMocks.java"

# interfaces
.implements Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;


# direct methods
.method constructor <init>(Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

    .line 29
    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;->this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 32
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-direct {v0}, Lorg/mockito/internal/creation/MockSettingsImpl;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;->this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

    .line 38
    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
