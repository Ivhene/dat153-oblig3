.class public Lorg/checkerframework/org/plumelib/reflection/Signatures$ClassnameAndDimensions;
.super Ljava/lang/Object;
.source "Signatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/reflection/Signatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassnameAndDimensions"
.end annotation


# instance fields
.field public final classname:Ljava/lang/String;

.field public final dimensions:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "dimensions"    # I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/reflection/Signatures$ClassnameAndDimensions;->classname:Ljava/lang/String;

    .line 260
    iput p2, p0, Lorg/checkerframework/org/plumelib/reflection/Signatures$ClassnameAndDimensions;->dimensions:I

    .line 261
    return-void
.end method

.method public static parseFqBinaryName(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/reflection/Signatures$ClassnameAndDimensions;
    .locals 4
    .param p0, "typename"    # Ljava/lang/String;

    .line 270
    invoke-static {}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->access$000()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 273
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "classname":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 275
    .local v2, "dimensions":I
    new-instance v3, Lorg/checkerframework/org/plumelib/reflection/Signatures$ClassnameAndDimensions;

    invoke-direct {v3, v1, v2}, Lorg/checkerframework/org/plumelib/reflection/Signatures$ClassnameAndDimensions;-><init>(Ljava/lang/String;I)V

    return-object v3
.end method
