.class public interface abstract Lorg/checkerframework/framework/util/CFContext;
.super Ljava/lang/Object;
.source "CFContext.java"

# interfaces
.implements Lorg/checkerframework/framework/util/BaseContext;


# virtual methods
.method public abstract getChecker()Lorg/checkerframework/framework/source/SourceChecker;
.end method

.method public abstract getVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/source/SourceVisitor<",
            "**>;"
        }
    .end annotation
.end method
