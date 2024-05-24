.class public Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;
.super Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;
.source "DeleteCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/org/apache/commons/text/diff/EditCommand<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;-><init>(Ljava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand<TT;>;"
    .local p1, "visitor":Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;, "Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/diff/DeleteCommand;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;->visitDeleteCommand(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
