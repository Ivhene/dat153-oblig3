.class public final Lorg/checkerframework/checker/regex/RegexUtil;
.super Ljava/lang/Object;
.source "RegexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/checker/regex/RegexUtil;->asRegex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asRegex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 294
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 295
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-static {v0}, Lorg/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v1

    .line 296
    .local v1, "actualGroups":I
    if-lt v1, p1, :cond_0

    .line 299
    return-object p0

    .line 297
    :cond_0
    new-instance v2, Ljava/lang/Error;

    invoke-static {p0, p1, v1}, Lorg/checkerframework/checker/regex/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "groups":I
    throw v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "p":Ljava/util/regex/Pattern;
    .end local v1    # "actualGroups":I
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "groups":I
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getGroupCount(Ljava/util/regex/Pattern;)I
    .locals 1
    .param p0, "p"    # Ljava/util/regex/Pattern;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 334
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    return v0
.end method

.method public static isRegex(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .annotation runtime Lorg/checkerframework/framework/qual/EnsuresQualifierIf;
        expression = {
            "#1"
        }
        qualifier = Lorg/checkerframework/checker/regex/qual/Regex;
        result = true
    .end annotation

    .line 187
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/checker/regex/RegexUtil;->isRegex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRegex(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .annotation runtime Lorg/checkerframework/framework/qual/EnsuresQualifierIf;
        expression = {
            "#1"
        }
        qualifier = Lorg/checkerframework/checker/regex/qual/Regex;
        result = true
    .end annotation

    .line 147
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/checker/regex/RegexUtil;->isRegex(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRegex(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .annotation runtime Lorg/checkerframework/framework/qual/EnsuresQualifierIf;
        expression = {
            "#1"
        }
        qualifier = Lorg/checkerframework/checker/regex/qual/Regex;
        result = true
    .end annotation

    .line 166
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v1, "p":Ljava/util/regex/Pattern;
    nop

    .line 170
    invoke-static {v1}, Lorg/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v2

    if-lt v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 167
    .end local v1    # "p":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    return v0
.end method

.method public static regexError(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/checker/regex/RegexUtil;->regexError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 215
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 216
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-static {v0}, Lorg/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v1

    .line 217
    .local v1, "actualGroups":I
    if-ge v1, p1, :cond_0

    .line 218
    invoke-static {p0, p1, v1}, Lorg/checkerframework/checker/regex/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 222
    .end local v0    # "p":Ljava/util/regex/Pattern;
    .end local v1    # "actualGroups":I
    :cond_0
    nop

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "expectedGroups"    # I
    .param p2, "actualGroups"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regex \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groups, but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groups are needed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexException(Ljava/lang/String;)Ljava/util/regex/PatternSyntaxException;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 235
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/checker/regex/RegexUtil;->regexException(Ljava/lang/String;I)Ljava/util/regex/PatternSyntaxException;

    move-result-object v0

    return-object v0
.end method

.method public static regexException(Ljava/lang/String;I)Ljava/util/regex/PatternSyntaxException;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 251
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 252
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-static {v0}, Lorg/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v1

    .line 253
    .local v1, "actualGroups":I
    if-ge v1, p1, :cond_0

    .line 254
    new-instance v2, Ljava/util/regex/PatternSyntaxException;

    .line 255
    invoke-static {p0, p1, v1}, Lorg/checkerframework/checker/regex/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-object v2

    .line 259
    .end local v0    # "p":Ljava/util/regex/Pattern;
    .end local v1    # "actualGroups":I
    :cond_0
    nop

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    return-object v0
.end method
