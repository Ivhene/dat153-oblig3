.class public interface abstract Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
.super Ljava/lang/Object;
.source "InstrumentationMemberAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation


# virtual methods
.method public abstract getLookup()Ljava/lang/invoke/MethodHandles$Lookup;
.end method

.method public abstract getModule()Ljava/lang/Object;
.end method

.method public varargs abstract invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V
.end method
