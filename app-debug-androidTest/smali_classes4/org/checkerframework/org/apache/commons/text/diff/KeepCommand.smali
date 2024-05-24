.class public Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;
.super Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;
.source "KeepCommand.java"


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

    .line 45
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;-><init>(Ljava/lang/Object;)V

    .line 46
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

    .line 56
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand<TT;>;"
    .local p1, "visitor":Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;, "Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/diff/KeepCommand;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;->visitKeepCommand(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
