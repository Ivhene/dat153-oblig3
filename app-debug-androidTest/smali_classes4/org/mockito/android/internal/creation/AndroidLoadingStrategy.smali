.class Lorg/mockito/android/internal/creation/AndroidLoadingStrategy;
.super Ljava/lang/Object;
.source "AndroidLoadingStrategy.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDisrespectingOpenness()Z
    .locals 1

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 11
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "localMock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 25
    .local p1, "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->target:Ljava/io/File;

    .line 26
    .local v0, "target":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 39
    new-instance v1, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;

    invoke-direct {v1, v0}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;-><init>(Ljava/io/File;)V

    return-object v1

    .line 27
    :cond_0
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v2, "Could not look up implicit location for storing generated classes"

    const-string v3, ""

    const-string v4, "You can configure an explicit location by setting the system property"

    const-string v5, "\'org.mockito.android.target\' to a folder for storing generated class files"

    const-string v6, "This location must be in private scope for most API versions, for example:"

    const-string v7, ""

    const-string v8, "MyActivity.this.getDir(\"target\", Context.MODE_PRIVATE)"

    const-string v9, "or"

    const-string v10, "getInstrumentation().getTargetContext().getCacheDir().getPath()"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
