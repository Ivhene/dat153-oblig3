.class public final Lcom/android/dex/DexFormat;
.super Ljava/lang/Object;
.source "DexFormat.java"


# static fields
.field public static final API_CONST_METHOD_HANDLE:I = 0x1c

.field public static final API_CURRENT:I = 0x1c

.field public static final API_DEFINE_INTERFACE_METHODS:I = 0x18

.field public static final API_INVOKE_INTERFACE_METHODS:I = 0x18

.field public static final API_INVOKE_STATIC_INTERFACE_METHODS:I = 0x15

.field public static final API_METHOD_HANDLES:I = 0x1a

.field public static final API_NO_EXTENDED_OPCODES:I = 0xd

.field public static final DEX_IN_JAR_NAME:Ljava/lang/String; = "classes.dex"

.field public static final ENDIAN_TAG:I = 0x12345678

.field public static final MAGIC_PREFIX:Ljava/lang/String; = "dex\n"

.field public static final MAGIC_SUFFIX:Ljava/lang/String; = "\u0000"

.field public static final MAX_MEMBER_IDX:I = 0xffff

.field public static final MAX_TYPE_IDX:I = 0xffff

.field public static final VERSION_CURRENT:Ljava/lang/String; = "039"

.field public static final VERSION_FOR_API_13:Ljava/lang/String; = "035"

.field public static final VERSION_FOR_API_24:Ljava/lang/String; = "037"

.field public static final VERSION_FOR_API_26:Ljava/lang/String; = "038"

.field public static final VERSION_FOR_API_28:Ljava/lang/String; = "039"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiToMagic(I)Ljava/lang/String;
    .locals 3
    .param p0, "targetApiLevel"    # I

    .line 146
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    .line 147
    const-string v0, "039"

    .local v0, "version":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0    # "version":Ljava/lang/String;
    :cond_0
    if-lt p0, v0, :cond_1

    .line 149
    const-string v0, "039"

    .restart local v0    # "version":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "version":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_2

    .line 151
    const-string v0, "038"

    .restart local v0    # "version":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0    # "version":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x18

    if-lt p0, v0, :cond_3

    .line 153
    const-string v0, "037"

    .restart local v0    # "version":Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0    # "version":Ljava/lang/String;
    :cond_3
    const-string v0, "035"

    .line 158
    .restart local v0    # "version":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dex\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isSupportedDexMagic([B)Z
    .locals 2
    .param p0, "magic"    # [B

    .line 167
    invoke-static {p0}, Lcom/android/dex/DexFormat;->magicToApi([B)I

    move-result v0

    .line 168
    .local v0, "api":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static magicToApi([B)I
    .locals 5
    .param p0, "magic"    # [B

    .line 111
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 112
    return v2

    .line 115
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_7

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_7

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "version":Ljava/lang/String;
    const-string v1, "035"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const/16 v1, 0xd

    return v1

    .line 124
    :cond_2
    const-string v1, "037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    const/16 v1, 0x18

    return v1

    .line 126
    :cond_3
    const-string v1, "038"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    const/16 v1, 0x1a

    return v1

    .line 128
    :cond_4
    const-string v1, "039"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x1c

    if-eqz v3, :cond_5

    .line 129
    return v4

    .line 130
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    return v4

    .line 134
    :cond_6
    return v2

    .line 117
    .end local v0    # "version":Ljava/lang/String;
    :cond_7
    :goto_0
    return v2
.end method
