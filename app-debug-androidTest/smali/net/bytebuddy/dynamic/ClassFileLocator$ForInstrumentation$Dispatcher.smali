.class public interface abstract Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.instrument.Instrumentation"
.end annotation


# virtual methods
.method public abstract addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
.end method

.method public abstract isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z
.end method

.method public abstract retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/UnmodifiableClassException;
        }
    .end annotation
.end method
