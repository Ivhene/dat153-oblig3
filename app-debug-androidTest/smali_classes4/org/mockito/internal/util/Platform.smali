.class public abstract Lorg/mockito/internal/util/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final JAVA_8_DEV_VERSION_SCHEME:Ljava/util/regex/Pattern;

.field private static final JAVA_8_RELEASE_VERSION_SCHEME:Ljava/util/regex/Pattern;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JVM_INFO:Ljava/lang/String;

.field public static final JVM_NAME:Ljava/lang/String;

.field public static final JVM_VENDOR:Ljava/lang/String;

.field public static final JVM_VENDOR_VERSION:Ljava/lang/String;

.field public static final JVM_VERSION:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    nop

    .line 16
    const-string v0, "1\\.8\\.0_(\\d+)(?:-ea)?(?:-b\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JAVA_8_RELEASE_VERSION_SCHEME:Ljava/util/regex/Pattern;

    .line 17
    nop

    .line 18
    const-string v0, "1\\.8\\.0b\\d+_u(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JAVA_8_DEV_VERSION_SCHEME:Ljava/util/regex/Pattern;

    .line 19
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JAVA_VERSION:Ljava/lang/String;

    .line 20
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_VERSION:Ljava/lang/String;

    .line 21
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_VENDOR:Ljava/lang/String;

    .line 22
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_VENDOR_VERSION:Ljava/lang/String;

    .line 23
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "java.vm.info"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_INFO:Ljava/lang/String;

    .line 25
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->OS_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->OS_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describe()Ljava/lang/String;
    .locals 9

    .line 39
    sget-object v0, Lorg/mockito/internal/util/Platform;->JAVA_VERSION:Ljava/lang/String;

    sget-object v1, Lorg/mockito/internal/util/Platform;->JVM_VENDOR:Ljava/lang/String;

    sget-object v2, Lorg/mockito/internal/util/Platform;->JVM_VENDOR_VERSION:Ljava/lang/String;

    sget-object v3, Lorg/mockito/internal/util/Platform;->JVM_NAME:Ljava/lang/String;

    sget-object v4, Lorg/mockito/internal/util/Platform;->JVM_VERSION:Ljava/lang/String;

    sget-object v5, Lorg/mockito/internal/util/Platform;->JVM_INFO:Ljava/lang/String;

    sget-object v6, Lorg/mockito/internal/util/Platform;->OS_NAME:Ljava/lang/String;

    sget-object v7, Lorg/mockito/internal/util/Platform;->OS_VERSION:Ljava/lang/String;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 40
    const-string v1, "Java               : %s\nJVM vendor name    : %s\nJVM vendor version : %s\nJVM name           : %s\nJVM version        : %s\nJVM info           : %s\nOS name            : %s\nOS version         : %s\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "description":Ljava/lang/String;
    invoke-static {}, Lorg/mockito/internal/util/Platform;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v2, "IMPORTANT INFORMATION FOR ANDROID USERS:"

    const-string v3, ""

    const-string v4, "The regular Byte Buddy mock makers cannot generate code on an Android VM!"

    const-string v5, "To resolve this, please use the \'mockito-android\' dependency for your application:"

    const-string v6, "https://search.maven.org/artifact/org.mockito/mockito-android"

    const-string v7, ""

    move-object v8, v0

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0
.end method

.method public static isAndroid()Z
    .locals 2

    .line 31
    const-string v0, "java.vendor"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isAndroidMockMakerRequired()Z
    .locals 1

    .line 35
    const-string v0, "org.mockito.mock.android"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJava8BelowUpdate45()Z
    .locals 1

    .line 72
    sget-object v0, Lorg/mockito/internal/util/Platform;->JVM_VERSION:Ljava/lang/String;

    invoke-static {v0}, Lorg/mockito/internal/util/Platform;->isJava8BelowUpdate45(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isJava8BelowUpdate45(Ljava/lang/String;)Z
    .locals 5
    .param p0, "jvmVersion"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lorg/mockito/internal/util/Platform;->JAVA_8_RELEASE_VERSION_SCHEME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 77
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "update":I
    if-ge v1, v3, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 82
    .end local v1    # "update":I
    :cond_1
    sget-object v1, Lorg/mockito/internal/util/Platform;->JAVA_8_DEV_VERSION_SCHEME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    .restart local v1    # "update":I
    if-ge v1, v3, :cond_2

    move v2, v4

    :cond_2
    return v2

    .line 88
    .end local v1    # "update":I
    :cond_3
    const-string v1, "1\\.8\\.0-b\\d+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "vmName1"    # Ljava/lang/String;
    .param p1, "warnMessage1"    # Ljava/lang/String;
    .param p2, "vmName2"    # Ljava/lang/String;
    .param p3, "warnMessage2"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lorg/mockito/internal/util/Platform;->JVM_NAME:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/mockito/internal/util/Platform;->warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "current"    # Ljava/lang/String;
    .param p1, "vmName1"    # Ljava/lang/String;
    .param p2, "warnMessage1"    # Ljava/lang/String;
    .param p3, "vmName2"    # Ljava/lang/String;
    .param p4, "warnMessage2"    # Ljava/lang/String;

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-object p2

    .line 106
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    return-object p4

    .line 109
    :cond_1
    const-string v0, ""

    return-object v0
.end method
