.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;
.super Ljava/lang/Object;
.source "CsmIndent.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 0
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 31
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 32
    return-void
.end method
