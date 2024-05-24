.class Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;
.super Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.source "ModuleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleSystemFound"
.end annotation


# instance fields
.field private final addExports:Ljava/lang/reflect/Method;

.field private final addOpens:Ljava/lang/reflect/Method;

.field private final addReads:Ljava/lang/reflect/Method;

.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final canRead:Ljava/lang/reflect/Method;

.field private final forName:Ljava/lang/reflect/Method;

.field private final getModule:Ljava/lang/reflect/Method;

.field private final injectonBaseSuffix:I

.field private final isExported:Ljava/lang/reflect/Method;

.field private final isExportedUnqualified:Ljava/lang/reflect/Method;

.field private final isOpen:Ljava/lang/reflect/Method;

.field private final loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

.field private final random:Ljava/util/Random;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;)V
    .locals 7
    .param p1, "byteBuddy"    # Lnet/bytebuddy/ByteBuddy;
    .param p2, "loader"    # Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;
    .param p3, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 67
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 68
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->random:Ljava/util/Random;

    .line 69
    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->injectonBaseSuffix:I

    .line 70
    const-string v0, "java.lang.Module"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "moduleType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getModule"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 72
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v5, "isOpen"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isOpen:Ljava/lang/reflect/Method;

    .line 73
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object v0, v3, v4

    const-string v5, "isExported"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExported:Ljava/lang/reflect/Method;

    .line 74
    new-array v3, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v2

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExportedUnqualified:Ljava/lang/reflect/Method;

    .line 75
    new-array v3, v4, [Ljava/lang/Class;

    aput-object v0, v3, v2

    const-string v5, "canRead"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->canRead:Ljava/lang/reflect/Method;

    .line 76
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object v0, v3, v4

    const-string v5, "addExports"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addExports:Ljava/lang/reflect/Method;

    .line 77
    new-array v3, v4, [Ljava/lang/Class;

    aput-object v0, v3, v2

    const-string v5, "addReads"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addReads:Ljava/lang/reflect/Method;

    .line 78
    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v0, v1, v4

    const-string v3, "addOpens"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addOpens:Ljava/lang/reflect/Method;

    .line 79
    const-class v1, Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "forName"

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/bytebuddy/ByteBuddy;
    .param p2, "x1"    # Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;
    .param p3, "x2"    # Ljava/util/Random;
    .param p4, "x3"    # Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;-><init>(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;)V

    return-void
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 292
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not invoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using reflection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Mockito attempted to interact with the Java module system but an unexpected method behavior was encountered"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 295
    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .locals 19
    .param p3, "export"    # Z
    .param p4, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 171
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "mockitoType"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExported(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 172
    .local v6, "needsExport":Z
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p0 .. p2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->canRead(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    .line 173
    .local v7, "needsRead":Z
    :goto_1
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 174
    return-void

    .line 176
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 177
    .local v8, "classLoader":Ljava/lang/ClassLoader;
    const-string v9, ""

    if-eqz v8, :cond_9

    .line 187
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    if-ne v8, v10, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v5

    .line 188
    .local v10, "targetVisible":Z
    :goto_2
    if-nez v10, :cond_5

    if-eqz v8, :cond_5

    .line 189
    invoke-virtual {v8}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 190
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-ne v8, v11, :cond_4

    move v11, v4

    goto :goto_3

    :cond_4
    move v11, v5

    :goto_3
    move v10, v11

    goto :goto_2

    .line 194
    :cond_5
    const-string v11, "This is required to adjust the module graph to enable mock creation"

    const/4 v12, 0x2

    if-eqz v10, :cond_6

    .line 195
    iget-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 196
    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    iget-object v13, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    .line 197
    invoke-static {v13}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v13

    invoke-virtual {v0, v13}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 198
    .local v0, "targetLookup":Lnet/bytebuddy/implementation/MethodCall;
    sget-object v13, Lnet/bytebuddy/implementation/StubMethod;->INSTANCE:Lnet/bytebuddy/implementation/StubMethod;

    move-object v12, v0

    .local v13, "implementation":Lnet/bytebuddy/implementation/Implementation$Composable;
    goto/16 :goto_4

    .line 203
    .end local v0    # "targetLookup":Lnet/bytebuddy/implementation/MethodCall;
    .end local v13    # "implementation":Lnet/bytebuddy/implementation/Implementation$Composable;
    :cond_6
    :try_start_0
    iget-object v13, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    const-class v14, Ljava/lang/Object;

    sget-object v15, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    .line 205
    invoke-virtual {v13, v14, v15}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v13

    const-string v14, "%s$%d"

    new-array v15, v12, [Ljava/lang/Object;

    const-string v16, "org.mockito.codegen.MockitoTypeCarrier"

    aput-object v16, v15, v5

    iget-object v5, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->random:Ljava/util/Random;

    .line 212
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v4

    .line 209
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-interface {v13, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v5

    const-class v13, Ljava/lang/Class;

    new-array v14, v12, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v15, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    sget-object v15, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v15, v14, v4

    .line 213
    invoke-interface {v5, v0, v13, v14}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v5

    .line 218
    invoke-interface {v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v5

    .line 220
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    iget-object v14, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 222
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    .line 221
    const/4 v12, 0x0

    invoke-interface {v14, v2, v15, v12}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v14

    .line 219
    invoke-interface {v5, v13, v14}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v5

    .line 223
    invoke-interface {v5}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v5

    .line 224
    .local v5, "intermediate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 225
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    nop

    .line 235
    iget-object v12, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    invoke-static {v12}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v12

    invoke-virtual {v12, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onField(Ljava/lang/reflect/Field;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v12

    .line 236
    .local v12, "targetLookup":Lnet/bytebuddy/implementation/MethodCall;
    iget-object v13, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 237
    invoke-static {v13}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v13

    iget-object v14, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    .line 239
    invoke-static {v14}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v14

    .line 238
    invoke-virtual {v13, v14}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v13

    .line 241
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "intermediate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "implementation":Lnet/bytebuddy/implementation/Implementation$Composable;
    :goto_4
    iget-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 242
    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    iget-object v5, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    .line 243
    invoke-static {v5}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v5

    .line 244
    .local v5, "sourceLookup":Lnet/bytebuddy/implementation/MethodCall;
    if-eqz v6, :cond_7

    .line 245
    iget-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addExports:Ljava/lang/reflect/Method;

    .line 247
    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v5}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 249
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Lnet/bytebuddy/implementation/MethodCall;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v12}, Lnet/bytebuddy/implementation/MethodCall;->withMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 246
    invoke-interface {v13, v0}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v13

    .line 252
    :cond_7
    if-eqz v7, :cond_8

    .line 253
    iget-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addReads:Ljava/lang/reflect/Method;

    .line 255
    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v5}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v12}, Lnet/bytebuddy/implementation/MethodCall;->withMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 254
    invoke-interface {v13, v0}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v13

    .line 260
    :cond_8
    :try_start_1
    iget-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    const-class v14, Ljava/lang/Object;

    .line 262
    invoke-virtual {v0, v14}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    const-string v14, "%s$%s$%d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    .line 266
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v15, v16

    const-string v18, "MockitoModuleProbe"

    aput-object v18, v15, v4

    iget-object v4, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->random:Ljava/util/Random;

    .line 268
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x2

    aput-object v4, v15, v17

    .line 264
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-interface {v0, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    .line 269
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isTypeInitializer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v0, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v0

    .line 270
    invoke-interface {v0, v13}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    .line 273
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v14, v1, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    .line 274
    const/4 v1, 0x0

    invoke-interface {v14, v2, v15, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v1

    .line 272
    invoke-interface {v0, v4, v1}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 260
    const/4 v4, 0x1

    invoke-static {v0, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    nop

    .line 288
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not force module adjustment of the module of "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v9, v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 282
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "sourceLookup":Lnet/bytebuddy/implementation/MethodCall;
    .end local v12    # "targetLookup":Lnet/bytebuddy/implementation/MethodCall;
    .end local v13    # "implementation":Lnet/bytebuddy/implementation/Implementation$Composable;
    :catch_1
    move-exception v0

    .line 227
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create a carrier for making the Mockito type visible to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v9, v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 228
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "targetVisible":Z
    :cond_9
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is declared by the bootstrap loader and cannot be adjusted"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requires package export to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requires adjusted reading of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "Cannot adjust module graph for modules in the bootstrap loader"

    filled-new-array {v10, v9, v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 179
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method canRead(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 97
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->canRead:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method injectionBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 127
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "packageName":Ljava/lang/String;
    const-class v2, Lorg/mockito/codegen/InjectionBase;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne p1, v2, :cond_0

    const-class v2, Lorg/mockito/codegen/InjectionBase;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-class v1, Lorg/mockito/codegen/InjectionBase;

    return-object v1

    .line 132
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    iget v2, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->injectonBaseSuffix:I

    .line 136
    .local v2, "suffix":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/mockito/codegen/InjectionBase;

    .line 139
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "suffix":I
    .local v4, "suffix":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v2, "name":Ljava/lang/String;
    :try_start_1
    invoke-static {v2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 150
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, p1, :cond_1

    .line 151
    :try_start_2
    monitor-exit p0

    return-object v3

    .line 155
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move v2, v4

    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    .line 154
    .local v3, "ignored":Ljava/lang/ClassNotFoundException;
    nop

    .line 157
    .end local v3    # "ignored":Ljava/lang/ClassNotFoundException;
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    const-class v5, Ljava/lang/Object;

    sget-object v6, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    .line 158
    invoke-virtual {v3, v5, v6}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    .line 159
    invoke-interface {v3, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    .line 160
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v3

    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    const-class v6, Lorg/mockito/codegen/InjectionBase;

    .line 163
    invoke-interface {v5, v6, p1, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v1

    .line 161
    invoke-interface {v3, p1, v1}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v1

    monitor-exit p0

    .line 157
    return-object v1

    .line 165
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "suffix":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method isExported(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 102
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExportedUnqualified:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    invoke-static {v1, p1, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isExported(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 114
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExported:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 120
    invoke-static {v1, p1, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    .line 122
    invoke-static {v4, p2, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isOpened(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 84
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isOpen:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 90
    invoke-static {v1, p1, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v4, p2, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 88
    invoke-static {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
