.class public abstract Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;
.super Ljava/lang/Object;
.source "EditCommand.java"


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
.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/EditCommand<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;->object:Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/diff/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;, "Lorg/checkerframework/org/apache/commons/text/diff/EditCommand<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/diff/EditCommand;->object:Ljava/lang/Object;

    return-object v0
.end method
