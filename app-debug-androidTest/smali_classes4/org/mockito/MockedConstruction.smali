.class public interface abstract Lorg/mockito/MockedConstruction;
.super Ljava/lang/Object;
.source "MockedConstruction.java"

# interfaces
.implements Lorg/mockito/ScopedMock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/MockedConstruction$MockInitializer;,
        Lorg/mockito/MockedConstruction$Context;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/ScopedMock;"
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public abstract constructed()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
