.class public Lorg/checkerframework/org/apache/commons/text/diff/EditScript;
.super Ljava/lang/Object;
.source "EditScript.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/commons/text/diff/EditCommand<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private lcsLength:I

.field private modifications:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->lcsLength:I

    .line 63
    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->modifications:I

    .line 64
    return-void
.end method


# virtual methods
.method public append(Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<TT;>;"
    .local p1, "command":Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->modifications:I

    .line 94
    return-void
.end method

.method public append(Lorg/checkerframework/org/apache/commons/text/diff/InsertCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/diff/InsertCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<TT;>;"
    .local p1, "command":Lorg/checkerframework/org/apache/commons/text/diff/InsertCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/InsertCommand<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->modifications:I

    .line 84
    return-void
.end method

.method public append(Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<TT;>;"
    .local p1, "command":Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->lcsLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->lcsLength:I

    .line 74
    return-void
.end method

.method public getLCSLength()I
    .locals 1

    .line 119
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<TT;>;"
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->lcsLength:I

    return v0
.end method

.method public getModifications()I
    .locals 1

    .line 130
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<TT;>;"
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->modifications:I

    return v0
.end method

.method public visit(Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditScript;, "Lorg/checkerframework/org/apache/commons/text/diff/EditScript<TT;>;"
    .local p1, "visitor":Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;, "Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;

    .line 107
    .local v1, "command":Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/EditCommand<TT;>;"
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;->accept(Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;)V

    .line 108
    .end local v1    # "command":Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/EditCommand<TT;>;"
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method
