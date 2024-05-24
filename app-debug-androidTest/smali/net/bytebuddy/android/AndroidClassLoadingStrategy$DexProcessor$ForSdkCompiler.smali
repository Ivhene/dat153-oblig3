.class public Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;
.super Ljava/lang/Object;
.source "AndroidClassLoadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForSdkCompiler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;,
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;
    }
.end annotation


# static fields
.field private static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"

.field private static final DEX_COMPATIBLE_API_VERSION:I = 0xd

.field private static final DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;

.field private static final NOT_VERBOSE:Z = false

.field private static final NO_PRINT_OUTPUT:Ljava/io/Writer;


# instance fields
.field private final dexCompilerOptions:Lcom/android/dx/dex/cf/CfOptions;

.field private final dexFileOptions:Lcom/android/dx/dex/DexOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 223
    const-class v0, [B

    const-string v1, "translate"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "com.android.dx.command.dexer.DxContext"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 224
    .local v8, "dxContextType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v9, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForApi26LevelCompatibleVm;

    const-class v10, Lcom/android/dx/dex/cf/CfTranslator;

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Class;

    aput-object v8, v11, v7

    const-class v12, Lcom/android/dx/cf/direct/DirectClassFile;

    aput-object v12, v11, v5

    aput-object v0, v11, v4

    const-class v12, Lcom/android/dx/dex/cf/CfOptions;

    aput-object v12, v11, v3

    const-class v12, Lcom/android/dx/dex/DexOptions;

    aput-object v12, v11, v2

    const-class v12, Lcom/android/dx/dex/file/DexFile;

    aput-object v12, v11, v6

    invoke-virtual {v10, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Class;

    .line 230
    invoke-virtual {v8, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForApi26LevelCompatibleVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v9

    .line 251
    .end local v8    # "dxContextType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    goto :goto_0

    .line 231
    .end local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    :catchall_0
    move-exception v8

    .line 233
    .local v8, "ignored":Ljava/lang/Throwable;
    :try_start_1
    new-instance v9, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForLegacyVm;

    const-class v10, Lcom/android/dx/dex/cf/CfTranslator;

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Lcom/android/dx/cf/direct/DirectClassFile;

    aput-object v12, v11, v7

    aput-object v0, v11, v5

    const-class v12, Lcom/android/dx/dex/cf/CfOptions;

    aput-object v12, v11, v4

    const-class v12, Lcom/android/dx/dex/DexOptions;

    aput-object v12, v11, v3

    const-class v12, Lcom/android/dx/dex/file/DexFile;

    aput-object v12, v11, v2

    invoke-virtual {v10, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const-class v11, Lcom/android/dx/dex/DexOptions;

    const-string v12, "minSdkVersion"

    .line 238
    invoke-virtual {v11, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v9

    .line 250
    .restart local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    goto :goto_0

    .line 239
    .end local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    :catchall_1
    move-exception v9

    .line 241
    .local v9, "suppressed":Ljava/lang/Throwable;
    :try_start_2
    new-instance v10, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForLegacyVm;

    const-class v11, Lcom/android/dx/dex/cf/CfTranslator;

    new-array v6, v6, [Ljava/lang/Class;

    const-class v12, Lcom/android/dx/cf/direct/DirectClassFile;

    aput-object v12, v6, v7

    aput-object v0, v6, v5

    const-class v0, Lcom/android/dx/dex/cf/CfOptions;

    aput-object v0, v6, v4

    const-class v0, Lcom/android/dx/dex/DexOptions;

    aput-object v0, v6, v3

    const-class v0, Lcom/android/dx/dex/file/DexFile;

    aput-object v0, v6, v2

    invoke-virtual {v11, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Lcom/android/dx/dex/DexOptions;

    const-string v2, "targetApiLevel"

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v10

    .line 249
    .restart local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    goto :goto_0

    .line 247
    .end local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    :catchall_2
    move-exception v0

    .line 248
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$Unavailable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 252
    .end local v8    # "ignored":Ljava/lang/Throwable;
    .end local v9    # "suppressed":Ljava/lang/Throwable;
    .local v0, "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    :goto_0
    sput-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;

    .line 274
    .end local v0    # "dispatcher":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->NO_PRINT_OUTPUT:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/cf/CfOptions;)V
    .locals 0
    .param p1, "dexFileOptions"    # Lcom/android/dx/dex/DexOptions;
    .param p2, "dexCompilerOptions"    # Lcom/android/dx/dex/cf/CfOptions;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->dexFileOptions:Lcom/android/dx/dex/DexOptions;

    .line 299
    iput-object p2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->dexCompilerOptions:Lcom/android/dx/dex/cf/CfOptions;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;)Lcom/android/dx/dex/cf/CfOptions;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

    .line 205
    iget-object v0, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->dexCompilerOptions:Lcom/android/dx/dex/cf/CfOptions;

    return-object v0
.end method

.method static synthetic access$100(Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;)Lcom/android/dx/dex/DexOptions;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

    .line 205
    iget-object v0, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->dexFileOptions:Lcom/android/dx/dex/DexOptions;

    return-object v0
.end method

.method static synthetic access$200()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
    .locals 1

    .line 205
    sget-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;

    return-object v0
.end method

.method static synthetic access$300()Ljava/io/Writer;
    .locals 1

    .line 205
    sget-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->NO_PRINT_OUTPUT:Ljava/io/Writer;

    return-object v0
.end method

.method protected static makeDefault()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;
    .locals 3

    .line 261
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    .line 262
    .local v0, "dexOptions":Lcom/android/dx/dex/DexOptions;
    sget-object v1, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;

    const/16 v2, 0xd

    invoke-interface {v1, v0, v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;->setTargetApi(Lcom/android/dx/dex/DexOptions;I)V

    .line 263
    new-instance v1, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

    new-instance v2, Lcom/android/dx/dex/cf/CfOptions;

    invoke-direct {v2}, Lcom/android/dx/dex/cf/CfOptions;-><init>()V

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;-><init>(Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/cf/CfOptions;)V

    return-object v1
.end method


# virtual methods
.method public create()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    .locals 3

    .line 306
    new-instance v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;

    new-instance v1, Lcom/android/dx/dex/file/DexFile;

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->dexFileOptions:Lcom/android/dx/dex/DexOptions;

    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/DexFile;-><init>(Lcom/android/dx/dex/DexOptions;)V

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;-><init>(Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;Lcom/android/dx/dex/file/DexFile;)V

    return-object v0
.end method
