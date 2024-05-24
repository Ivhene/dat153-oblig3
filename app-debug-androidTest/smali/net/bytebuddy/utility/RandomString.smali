.class public Lnet/bytebuddy/utility/RandomString;
.super Ljava/lang/Object;
.source "RandomString.java"


# static fields
.field public static final DEFAULT_LENGTH:I = 0x8

.field private static final KEY_BITS:I

.field private static final SYMBOL:[C


# instance fields
.field private final length:I

.field private final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "symbol":Ljava/lang/StringBuilder;
    const/16 v1, 0x30

    .local v1, "character":C
    :goto_0
    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 48
    .end local v1    # "character":C
    :cond_0
    const/16 v1, 0x61

    .restart local v1    # "character":C
    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_1

    .line 51
    .end local v1    # "character":C
    :cond_1
    const/16 v1, 0x41

    .restart local v1    # "character":C
    :goto_2
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_2

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_2

    .line 54
    .end local v1    # "character":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    .line 55
    array-length v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    .line 56
    .local v2, "bits":I
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    sub-int v1, v2, v1

    sput v1, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    .line 57
    .end local v0    # "symbol":Ljava/lang/StringBuilder;
    .end local v2    # "bits":I
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lnet/bytebuddy/utility/RandomString;-><init>(I)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-lez p1, :cond_0

    .line 86
    iput p1, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    .line 87
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/utility/RandomString;->random:Ljava/util/Random;

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A random string\'s length cannot be zero or negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hashOf(I)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # I

    .line 117
    sget v0, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    const/16 v1, 0x20

    div-int v2, v1, v0

    rem-int v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    new-array v0, v2, [C

    .line 118
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 119
    sget-object v3, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    sget v4, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    mul-int v5, v2, v4

    ushr-int v5, p0, v5

    const/4 v6, -0x1

    rsub-int/lit8 v4, v4, 0x20

    ushr-int v4, v6, v4

    and-int/2addr v4, v5

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v2    # "index":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static make()Ljava/lang/String;
    .locals 1

    .line 96
    const/16 v0, 0x8

    invoke-static {v0}, Lnet/bytebuddy/utility/RandomString;->make(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static make(I)Ljava/lang/String;
    .locals 1
    .param p0, "length"    # I

    .line 106
    new-instance v0, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {v0, p0}, Lnet/bytebuddy/utility/RandomString;-><init>(I)V

    invoke-virtual {v0}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public nextString()Ljava/lang/String;
    .locals 5

    .line 130
    iget v0, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    new-array v0, v0, [C

    .line 131
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v2, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    if-ge v1, v2, :cond_0

    .line 132
    sget-object v2, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    iget-object v3, p0, Lnet/bytebuddy/utility/RandomString;->random:Ljava/util/Random;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "index":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
