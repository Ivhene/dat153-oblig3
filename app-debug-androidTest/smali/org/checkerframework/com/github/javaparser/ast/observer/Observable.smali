.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# virtual methods
.method public abstract isRegistered(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract unregister(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
