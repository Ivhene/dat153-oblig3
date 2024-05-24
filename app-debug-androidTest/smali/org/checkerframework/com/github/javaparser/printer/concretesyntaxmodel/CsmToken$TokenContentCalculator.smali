.class public interface abstract Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;
.super Ljava/lang/Object;
.source "CsmToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenContentCalculator"
.end annotation


# virtual methods
.method public abstract calculate(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation
.end method
