.class public interface abstract Lnet/bytebuddy/description/type/TypeDefinition$Sort$AnnotatedType;
.super Ljava/lang/Object;
.source "TypeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDefinition$Sort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "AnnotatedType"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.AnnotatedType"
.end annotation


# virtual methods
.method public abstract getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/Type;
.end method

.method public abstract isInstance(Ljava/lang/reflect/AnnotatedElement;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;
    .end annotation
.end method
