.class public interface abstract Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
.super Ljava/lang/Object;
.source "DifferenceElement.java"


# direct methods
.method public static added(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 1
    .param p0, "element"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static kept(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 1
    .param p0, "element"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static removed(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;
    .locals 1
    .param p0, "element"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method


# virtual methods
.method public abstract getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
.end method

.method public abstract isAdded()Z
.end method

.method public abstract isRemoved()Z
.end method
