.class public final Lcom/android/dx/rop/code/AccessFlags;
.super Ljava/lang/Object;
.source "AccessFlags.java"


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_CONSTRUCTOR:I = 0x10000

.field public static final ACC_DECLARED_SYNCHRONIZED:I = 0x20000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final CLASS_FLAGS:I = 0x7631

.field private static final CONV_CLASS:I = 0x1

.field private static final CONV_FIELD:I = 0x2

.field private static final CONV_METHOD:I = 0x3

.field public static final FIELD_FLAGS:I = 0x50df

.field public static final INNER_CLASS_FLAGS:I = 0x761f

.field public static final METHOD_FLAGS:I = 0x31dff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public static classString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 153
    const/16 v0, 0x7631

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fieldString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 175
    const/16 v0, 0x50df

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static humanHelper(III)Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # I
    .param p1, "mask"    # I
    .param p2, "what"    # I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    not-int v1, p1

    and-int/2addr v1, p0

    .line 333
    .local v1, "extra":I
    and-int/2addr p0, p1

    .line 335
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "|public"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_1

    .line 339
    const-string v2, "|private"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_1
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_2

    .line 342
    const-string v2, "|protected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_2
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_3

    .line 345
    const-string v2, "|static"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_3
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_4

    .line 348
    const-string v2, "|final"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 351
    if-ne p2, v3, :cond_5

    .line 352
    const-string v2, "|super"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 354
    :cond_5
    const-string v2, "|synchronized"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_6
    :goto_0
    and-int/lit8 v2, p0, 0x40

    const/4 v4, 0x3

    if-eqz v2, :cond_8

    .line 358
    if-ne p2, v4, :cond_7

    .line 359
    const-string v2, "|bridge"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    :cond_7
    const-string v2, "|volatile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_8
    :goto_1
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_a

    .line 365
    if-ne p2, v4, :cond_9

    .line 366
    const-string v2, "|varargs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 368
    :cond_9
    const-string v2, "|transient"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_a
    :goto_2
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_b

    .line 372
    const-string v2, "|native"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_b
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_c

    .line 375
    const-string v2, "|interface"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_c
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_d

    .line 378
    const-string v2, "|abstract"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_d
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_e

    .line 381
    const-string v2, "|strictfp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_e
    and-int/lit16 v2, p0, 0x1000

    if-eqz v2, :cond_f

    .line 384
    const-string v2, "|synthetic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_f
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_10

    .line 387
    const-string v2, "|annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_10
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_11

    .line 390
    const-string v2, "|enum"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_11
    const/high16 v2, 0x10000

    and-int/2addr v2, p0

    if-eqz v2, :cond_12

    .line 393
    const-string v2, "|constructor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_12
    const/high16 v2, 0x20000

    and-int/2addr v2, p0

    if-eqz v2, :cond_13

    .line 396
    const-string v2, "|declared_synchronized"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_13
    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 400
    :cond_14
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static innerClassString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 164
    const/16 v0, 0x761f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAbstract(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 274
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAnnotation(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 296
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isConstructor(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 241
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeclaredSynchronized(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 307
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnum(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 317
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInterface(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 252
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNative(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 285
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPrivate(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 219
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProtected(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 208
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPublic(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 197
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStatic(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 230
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSynchronized(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 263
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static methodString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 186
    const v0, 0x31dff

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
