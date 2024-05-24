.class public Lnet/bytebuddy/agent/ByteBuddyAgent;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    }
.end annotation


# static fields
.field private static final AGENT_CLASS_PROPERTY:Ljava/lang/String; = "Agent-Class"

.field private static final ATTACHER_FILE_NAME:Ljava/lang/String; = "byteBuddyAttacher"

.field private static final ATTACHMENT_TYPE_EVALUATOR:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

.field private static final BOOTSTRAP_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final BUFFER_SIZE:I = 0x400

.field private static final CANNOT_SELF_RESOLVE:Ljava/io/File;

.field private static final CAN_REDEFINE_CLASSES_PROPERTY:Ljava/lang/String; = "Can-Redefine-Classes"

.field private static final CAN_RETRANSFORM_CLASSES_PROPERTY:Ljava/lang/String; = "Can-Retransform-Classes"

.field private static final CAN_SET_NATIVE_METHOD_PREFIX:Ljava/lang/String; = "Can-Set-Native-Method-Prefix"

.field private static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"

.field private static final CLASS_PATH_ARGUMENT:Ljava/lang/String; = "-cp"

.field private static final END_OF_FILE:I = -0x1

.field private static final FILE_PROTOCOL:Ljava/lang/String; = "file"

.field private static final INSTRUMENTATION_METHOD:Ljava/lang/String; = "getInstrumentation"

.field private static final JAR_FILE_EXTENSION:Ljava/lang/String; = ".jar"

.field private static final JAVA_HOME:Ljava/lang/String; = "java.home"

.field public static final LATENT_RESOLVE:Ljava/lang/String; = "net.bytebuddy.agent.latent"

.field private static final MANIFEST_VERSION_VALUE:Ljava/lang/String; = "1.0"

.field private static final OS_NAME:Ljava/lang/String; = "os.name"

.field private static final START_INDEX:I

.field private static final STATIC_MEMBER:Ljava/lang/Object;

.field private static final SUCCESSFUL_ATTACH:I

.field private static final UNAVAILABLE:Ljava/lang/instrument/Instrumentation;

.field private static final WITHOUT_ARGUMENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    .line 115
    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->BOOTSTRAP_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 120
    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    .line 165
    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->UNAVAILABLE:Ljava/lang/instrument/Instrumentation;

    .line 170
    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    .line 175
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->ATTACHMENT_TYPE_EVALUATOR:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .locals 1

    .line 60
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->BOOTSTRAP_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 60
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .line 60
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v0
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;

    .line 220
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    .line 238
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 239
    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 2
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .param p3, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 273
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-static {p3, p1, p2, v0, v1}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;Z)V

    .line 274
    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 255
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 256
    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)V
    .locals 1
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;

    .line 290
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V
    .locals 1
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    .param p2, "argument"    # Ljava/lang/String;

    .line 308
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 309
    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 3
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    .param p2, "argument"    # Ljava/lang/String;
    .param p3, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 343
    invoke-interface {p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v1, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-static {p3, v0, p2, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;Z)V

    .line 344
    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1
    .param p0, "agentJar"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    .param p2, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 325
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 326
    return-void
.end method

.method public static attachNative(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;

    .line 360
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attachNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public static attachNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    .line 378
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attachNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 379
    return-void
.end method

.method public static attachNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 2
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .param p3, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 413
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-static {p3, p1, p2, v0, v1}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;Z)V

    .line 414
    return-void
.end method

.method public static attachNative(Ljava/io/File;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 395
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attachNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 396
    return-void
.end method

.method public static attachNative(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)V
    .locals 1
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;

    .line 430
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attachNative(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static attachNative(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V
    .locals 1
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    .param p2, "argument"    # Ljava/lang/String;

    .line 448
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attachNative(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 449
    return-void
.end method

.method public static attachNative(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 3
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    .param p2, "argument"    # Ljava/lang/String;
    .param p3, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 483
    invoke-interface {p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v1, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-static {p3, v0, p2, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;Z)V

    .line 484
    return-void
.end method

.method public static attachNative(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1
    .param p0, "agentLibrary"    # Ljava/io/File;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    .param p2, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 465
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attachNative(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    .line 466
    return-void
.end method

.method private static doGetInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 4

    .line 740
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/agent/Installer;

    .line 741
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstrumentation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 742
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 743
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/instrument/Instrumentation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    return-object v0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "ignored":Ljava/lang/Exception;
    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->UNAVAILABLE:Ljava/lang/instrument/Instrumentation;

    return-object v1
.end method

.method public static getInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 3

    .line 199
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    .line 200
    .local v0, "instrumentation":Ljava/lang/instrument/Instrumentation;
    if-eqz v0, :cond_0

    .line 203
    return-object v0

    .line 201
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Byte Buddy agent is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static install()Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 515
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method public static install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 1
    .param p0, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 538
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    invoke-static {p0, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 6
    .param p0, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    .param p1, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent;

    monitor-enter v0

    .line 582
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .local v1, "instrumentation":Ljava/lang/instrument/Instrumentation;
    if-eqz v1, :cond_0

    .line 584
    monitor-exit v0

    return-object v1

    .line 586
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    sget-object v4, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;Z)V

    .line 587
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 581
    .end local v1    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .end local p0    # "attachmentProvider":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    .end local p1    # "processProvider":Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static install(Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 1
    .param p0, "processProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;

    .line 565
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method private static install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;Z)V
    .locals 5
    .param p0, "attachmentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .param p3, "agentProvider"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;
    .param p4, "isNative"    # Z

    .line 600
    invoke-interface {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v0

    .line 601
    .local v0, "attachmentAccessor":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :try_start_0
    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->isExternalAttachmentRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->ATTACHMENT_TYPE_EVALUATOR:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

    invoke-interface {v1, p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;->requiresExternalAttachment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->getExternalAttachment()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;

    move-result-object v1

    invoke-interface {p3}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;->resolve()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, p1, v2, p4, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->installExternal(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->getVirtualMachineType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p3}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;->resolve()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2, p4, p2}, Lnet/bytebuddy/agent/Attacher;->install(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    nop

    .line 615
    return-void

    .line 612
    :catch_0
    move-exception v1

    .line 613
    .local v1, "exception":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during attachment using: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 610
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 611
    .local v1, "exception":Ljava/lang/RuntimeException;
    throw v1

    .line 602
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No compatible attachment provider is available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static installExternal(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;)V
    .locals 13
    .param p0, "externalAttachment"    # Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/io/File;
    .param p3, "isNative"    # Z
    .param p4, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 633
    move-object/from16 v1, p4

    const-string v0, ""

    const-string v2, ".class"

    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->trySelfResolve()Ljava/io/File;

    move-result-object v3

    .local v3, "selfResolvedJar":Ljava/io/File;
    const/4 v4, 0x0

    .line 635
    .local v4, "attachmentJar":Ljava/io/File;
    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 636
    :try_start_0
    const-class v6, Lnet/bytebuddy/agent/Attacher;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v9, Lnet/bytebuddy/agent/Attacher;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 637
    .local v6, "inputStream":Ljava/io/InputStream;
    if-eqz v6, :cond_1

    .line 641
    :try_start_1
    const-string v7, "byteBuddyAttacher"

    const-string v9, ".jar"

    invoke-static {v7, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    move-object v4, v7

    .line 642
    new-instance v7, Ljava/util/jar/JarOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 644
    .local v7, "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :try_start_2
    new-instance v9, Ljava/util/jar/JarEntry;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-class v12, Lnet/bytebuddy/agent/Attacher;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 645
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 647
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "index":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    .line 648
    invoke-virtual {v7, v2, v5, v9}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {v7}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    .end local v2    # "buffer":[B
    .end local v9    # "index":I
    :try_start_3
    invoke-virtual {v7}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 653
    nop

    .line 655
    .end local v7    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 656
    goto :goto_1

    .line 652
    .restart local v7    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v7}, Ljava/util/jar/JarOutputStream;->close()V

    .line 653
    nop

    .end local v3    # "selfResolvedJar":Ljava/io/File;
    .end local v4    # "attachmentJar":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .end local p1    # "processId":Ljava/lang/String;
    .end local p2    # "agent":Ljava/io/File;
    .end local p3    # "isNative":Z
    .end local p4    # "argument":Ljava/lang/String;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 655
    .end local v7    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    .restart local v3    # "selfResolvedJar":Ljava/io/File;
    .restart local v4    # "attachmentJar":Ljava/io/File;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .restart local p1    # "processId":Ljava/lang/String;
    .restart local p2    # "agent":Ljava/io/File;
    .restart local p3    # "isNative":Z
    .restart local p4    # "argument":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 656
    nop

    .end local v3    # "selfResolvedJar":Ljava/io/File;
    .end local v4    # "attachmentJar":Ljava/io/File;
    .end local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .end local p1    # "processId":Ljava/lang/String;
    .end local p2    # "agent":Ljava/io/File;
    .end local p3    # "isNative":Z
    .end local p4    # "argument":Ljava/lang/String;
    throw v0

    .line 638
    .restart local v3    # "selfResolvedJar":Ljava/io/File;
    .restart local v4    # "attachmentJar":Ljava/io/File;
    .restart local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .restart local p1    # "processId":Ljava/lang/String;
    .restart local p2    # "agent":Ljava/io/File;
    .restart local p3    # "isNative":Z
    .restart local p4    # "argument":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot locate class file for Byte Buddy installation process"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "selfResolvedJar":Ljava/io/File;
    .end local v4    # "attachmentJar":Ljava/io/File;
    .end local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .end local p1    # "processId":Ljava/lang/String;
    .end local p2    # "agent":Ljava/io/File;
    .end local p3    # "isNative":Z
    .end local p4    # "argument":Ljava/lang/String;
    throw v0

    .line 658
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "selfResolvedJar":Ljava/io/File;
    .restart local v4    # "attachmentJar":Ljava/io/File;
    .restart local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .restart local p1    # "processId":Ljava/lang/String;
    .restart local p2    # "agent":Ljava/io/File;
    .restart local p3    # "isNative":Z
    .restart local p4    # "argument":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    move-object v6, v3

    .line 660
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 658
    invoke-static {v6}, Lnet/bytebuddy/agent/ByteBuddyAgent;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 661
    .local v2, "classPath":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->getClassPath()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 662
    .local v7, "jar":Ljava/io/File;
    sget-char v8, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/bytebuddy/agent/ByteBuddyAgent;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    nop

    .end local v7    # "jar":Ljava/io/File;
    goto :goto_3

    .line 664
    :cond_4
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "java.home"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "os.name"

    .line 666
    invoke-static {v9, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "windows"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "java.exe"

    goto :goto_4

    :cond_5
    const-string v9, "java"

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v5, "-cp"

    const/4 v8, 0x1

    aput-object v5, v7, v8

    .line 668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const-class v5, Lnet/bytebuddy/agent/Attacher;

    .line 669
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v7, v8

    .line 670
    invoke-virtual {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->getVirtualMachineType()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v7, v8

    const/4 v5, 0x5

    aput-object p1, v7, v5

    .line 672
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/agent/ByteBuddyAgent;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    aput-object v5, v7, v8

    .line 673
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x7

    aput-object v5, v7, v8

    if-nez v1, :cond_6

    :goto_5
    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_6
    const/16 v5, 0x8

    aput-object v0, v7, v5

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 674
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_8

    .line 678
    .end local v2    # "classPath":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_7

    .line 679
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 680
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 684
    :cond_7
    return-void

    .line 675
    .restart local v2    # "classPath":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Could not self-attach to current VM using external process"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "selfResolvedJar":Ljava/io/File;
    .end local v4    # "attachmentJar":Ljava/io/File;
    .end local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .end local p1    # "processId":Ljava/lang/String;
    .end local p2    # "agent":Ljava/io/File;
    .end local p3    # "isNative":Z
    .end local p4    # "argument":Ljava/lang/String;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 678
    .end local v2    # "classPath":Ljava/lang/StringBuilder;
    .restart local v3    # "selfResolvedJar":Ljava/io/File;
    .restart local v4    # "attachmentJar":Ljava/io/File;
    .restart local p0    # "externalAttachment":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .restart local p1    # "processId":Ljava/lang/String;
    .restart local p2    # "agent":Ljava/io/File;
    .restart local p3    # "isNative":Z
    .restart local p4    # "argument":Ljava/lang/String;
    :catchall_2
    move-exception v0

    if-eqz v4, :cond_9

    .line 679
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_9

    .line 680
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 683
    :cond_9
    throw v0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 726
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static trySelfResolve()Ljava/io/File;
    .locals 6

    .line 694
    :try_start_0
    const-string v0, "net.bytebuddy.agent.latent"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v0

    .line 697
    :cond_0
    const-class v0, Lnet/bytebuddy/agent/Attacher;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    .line 698
    .local v0, "protectionDomain":Ljava/security/ProtectionDomain;
    if-nez v0, :cond_1

    .line 699
    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v1

    .line 701
    :cond_1
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v1

    .line 702
    .local v1, "codeSource":Ljava/security/CodeSource;
    if-nez v1, :cond_2

    .line 703
    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v2

    .line 705
    :cond_2
    invoke-virtual {v1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v2

    .line 706
    .local v2, "location":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 707
    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 710
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 711
    :catch_0
    move-exception v3

    .line 712
    .local v3, "ignored":Ljava/net/URISyntaxException;
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v4

    .line 714
    .end local v0    # "protectionDomain":Ljava/security/ProtectionDomain;
    .end local v1    # "codeSource":Ljava/security/CodeSource;
    .end local v2    # "location":Ljava/net/URL;
    .end local v3    # "ignored":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 715
    .local v0, "ignored":Ljava/lang/Exception;
    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v1
.end method
