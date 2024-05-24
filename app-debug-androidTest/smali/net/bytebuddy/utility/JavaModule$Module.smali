.class public interface abstract Lnet/bytebuddy/utility/JavaModule$Module;
.super Ljava/lang/Object;
.source "JavaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Module"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.Module"
.end annotation


# virtual methods
.method public abstract canRead(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
.end method

.method public abstract getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isExported(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
.end method

.method public abstract isInstance(Ljava/lang/Object;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;
    .end annotation
.end method

.method public abstract isNamed(Ljava/lang/Object;)Z
.end method

.method public abstract isOpen(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
.end method
