.class public Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;
.super Ljava/lang/Object;
.source "ReplacementsFinder.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final handler:Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pendingDeletions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pendingInsertions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private skipped:I


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;, "Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder<TT;>;"
    .local p1, "handler":Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler;, "Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    .line 82
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->handler:Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler;

    .line 83
    return-void
.end method


# virtual methods
.method public visitDeleteCommand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;, "Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public visitInsertCommand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;, "Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public visitKeepCommand(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;, "Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->handler:Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler;

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0, v2, v3, v4}, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsHandler;->handleReplacement(ILjava/util/List;Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    .line 114
    :goto_0
    return-void
.end method
