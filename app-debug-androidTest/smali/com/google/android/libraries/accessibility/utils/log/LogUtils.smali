.class public Lcom/google/android/libraries/accessibility/utils/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogUtils"

.field private static parameterCustomizer:Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;

.field private static sLogLevel:I

.field private static sLogTagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->parameterCustomizer:Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;

    .line 45
    const/4 v0, 0x6

    sput v0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogLevel:I

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogTagPrefix:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 112
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 124
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 181
    const/4 v0, 0x6

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 193
    const/4 v0, 0x6

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 301
    sget v0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogLevel:I

    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 135
    const/4 v0, 0x4

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 147
    const/4 v0, 0x4

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public static varargs log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "priority"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 282
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public static varargs log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "priority"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 239
    sget v0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogLevel:I

    if-ge p1, v0, :cond_0

    .line 240
    return-void

    .line 243
    :cond_0
    sget-object v0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogTagPrefix:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 246
    .local v0, "prefixedTag":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->parameterCustomizer:Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;

    if-eqz v1, :cond_2

    .line 247
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_1
    array-length v2, p4

    if-ge v1, v2, :cond_2

    .line 248
    sget-object v2, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->parameterCustomizer:Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;

    aget-object v3, p4, v1

    invoke-interface {v2, v3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;->customize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p4, v1

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    .end local v1    # "a":I
    :cond_2
    :try_start_0
    invoke-static {p3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "message":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 255
    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 257
    :cond_3
    const-string v2, "%s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 260
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {p1, v0, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1    # "message":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/util/IllegalFormatException;
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad formatting string: \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogUtils"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1    # "e":Ljava/util/IllegalFormatException;
    :goto_3
    return-void
.end method

.method public static varargs logWithLimit(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "priority"    # I
    .param p2, "index"    # I
    .param p3, "limit"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 70
    if-le p2, p3, :cond_0

    .line 71
    return-void

    .line 72
    :cond_0
    if-ne p2, p3, :cond_1

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%d); further messages suppressed"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "formatWithIndex":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v0    # "formatWithIndex":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "formatWithIndex":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0, p5}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .line 296
    sput p0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogLevel:I

    .line 297
    return-void
.end method

.method public static setParameterCustomizer(Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;)V
    .locals 0
    .param p0, "parameterCustomizerArg"    # Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;

    .line 287
    sput-object p0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->parameterCustomizer:Lcom/google/android/libraries/accessibility/utils/log/LogUtils$ParameterCustomizer;

    .line 288
    return-void
.end method

.method public static setTagPrefix(Ljava/lang/String;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;

    .line 54
    sput-object p0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogTagPrefix:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static shouldLog(I)Z
    .locals 1
    .param p0, "logLevel"    # I

    .line 313
    sget v0, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->sLogLevel:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 89
    const/4 v0, 0x2

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 101
    const/4 v0, 0x2

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 158
    const/4 v0, 0x5

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 170
    const/4 v0, 0x5

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 204
    const/4 v0, 0x7

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 216
    const/4 v0, 0x7

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return-void
.end method
