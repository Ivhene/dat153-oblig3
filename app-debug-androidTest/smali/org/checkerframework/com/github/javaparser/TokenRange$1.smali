.class Lorg/checkerframework/com/github/javaparser/TokenRange$1;
.super Ljava/lang/Object;
.source "TokenRange.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/checkerframework/com/github/javaparser/JavaToken;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lorg/checkerframework/com/github/javaparser/JavaToken;

.field private hasNext:Z

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/TokenRange;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->this$0:Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->hasNext:Z

    .line 58
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->access$000(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->current:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->hasNext:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->next()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->current:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 68
    .local v0, "retval":Lorg/checkerframework/com/github/javaparser/JavaToken;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->current:Lorg/checkerframework/com/github/javaparser/JavaToken;

    if-eqz v1, :cond_3

    .line 71
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->this$0:Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;->access$100(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->hasNext:Z

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->current:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/JavaToken;

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->current:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 75
    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;->hasNext:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "End token is not linked to begin token."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_2
    :goto_0
    return-object v0

    .line 69
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to move past end of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
