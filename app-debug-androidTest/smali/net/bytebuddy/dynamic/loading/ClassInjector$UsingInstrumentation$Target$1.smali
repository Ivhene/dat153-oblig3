.class final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$1;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/ClassLoader;)V
    .locals 1
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 2412
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;-><init>(Ljava/lang/String;ILjava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassInjector$1;)V

    return-void
.end method


# virtual methods
.method protected inject(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "jarFile"    # Ljava/util/jar/JarFile;

    .line 2415
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->access$200()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;->appendToBootstrapClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V

    .line 2416
    return-void
.end method
