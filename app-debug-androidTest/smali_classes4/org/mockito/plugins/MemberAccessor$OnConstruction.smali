.class public interface abstract Lorg/mockito/plugins/MemberAccessor$OnConstruction;
.super Ljava/lang/Object;
.source "MemberAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/plugins/MemberAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConstruction"
.end annotation


# virtual methods
.method public abstract invoke(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
