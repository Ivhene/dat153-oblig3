.class public interface abstract Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;
.super Ljava/lang/Object;
.source "RecordComponentDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "RecordComponent"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.RecordComponent"
.end annotation


# virtual methods
.method public abstract getAccessor(Ljava/lang/Object;)Ljava/lang/reflect/Method;
.end method

.method public abstract getAnnotatedType(Ljava/lang/Object;)Ljava/lang/reflect/AnnotatedElement;
.end method

.method public abstract getDeclaringRecord(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getGenericSignature(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getGenericType(Ljava/lang/Object;)Ljava/lang/reflect/Type;
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getType(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract isInstance(Ljava/lang/Object;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;
    .end annotation
.end method
