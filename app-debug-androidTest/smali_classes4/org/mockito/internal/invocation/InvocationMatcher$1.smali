.class Lorg/mockito/internal/invocation/InvocationMatcher$1;
.super Ljava/lang/Object;
.source "InvocationMatcher.java"

# interfaces
.implements Lorg/mockito/internal/invocation/ArgumentMatcherAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/invocation/InvocationMatcher;->captureArgument()Lorg/mockito/internal/invocation/ArgumentMatcherAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/invocation/InvocationMatcher;


# direct methods
.method constructor <init>(Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/invocation/InvocationMatcher;

    .line 139
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationMatcher$1;->this$0:Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "argument"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 143
    .local p1, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    instance-of v0, p1, Lorg/mockito/internal/matchers/CapturesArguments;

    if-eqz v0, :cond_0

    .line 144
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/matchers/CapturesArguments;

    invoke-interface {v0, p2}, Lorg/mockito/internal/matchers/CapturesArguments;->captureFrom(Ljava/lang/Object;)V

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
