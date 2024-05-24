.class public Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "CheckMethodAdapter.java"


# static fields
.field private static final TYPE:[I


# instance fields
.field private endCode:Z

.field private endMethod:Z

.field private labels:Ljava/util/HashMap;

.field private startCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 83
    const-string v0, "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA"

    .line 87
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->TYPE:[I

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->TYPE:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 311
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->labels:Ljava/util/HashMap;

    .line 313
    return-void
.end method

.method static checkConstant(Ljava/lang/Object;)V
    .locals 3
    .param p0, "cst"    # Ljava/lang/Object;

    .line 681
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_1
    :goto_0
    return-void
.end method

.method static checkDesc(Ljava/lang/String;IZ)I
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "canBeVoid"    # Z

    .line 840
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 844
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, "Invalid descriptor: "

    sparse-switch v0, :sswitch_data_0

    .line 886
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :sswitch_0
    add-int/lit8 v0, p1, 0x1

    .line 863
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 867
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v1

    return v1

    .line 869
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    .end local v0    # "index":I
    :sswitch_1
    if-eqz p2, :cond_2

    .line 847
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 849
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :sswitch_2
    const/16 v0, 0x3b

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 874
    .restart local v0    # "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    sub-int v2, v0, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 879
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2, v0, v3}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    nop

    .line 884
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 880
    :catch_0
    move-exception v2

    .line 881
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 875
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    .end local v0    # "index":I
    :sswitch_3
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 841
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type descriptor (must not be null or empty)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x53 -> :sswitch_3
        0x56 -> :sswitch_1
        0x5a -> :sswitch_3
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method static checkDesc(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "canBeVoid"    # Z

    .line 821
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v0

    .line 822
    .local v0, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 825
    return-void

    .line 823
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid descriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static checkIdentifier(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 715
    const-string v0, "Invalid "

    if-eqz p0, :cond_5

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_5

    goto :goto_0

    :cond_0
    if-le p2, p1, :cond_5

    .line 720
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    const-string v3, " (must be a valid Java identifier): "

    if-eqz v2, :cond_4

    .line 724
    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p2

    .line 725
    .local v1, "max":I
    :goto_1
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 726
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 727
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 731
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 721
    .end local v1    # "max":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (must not be null or empty)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 696
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;IILjava/lang/String;)V

    .line 697
    return-void
.end method

.method static checkInternalName(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 790
    const-string v0, "Invalid "

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 794
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    .line 796
    .local v2, "max":I
    :goto_0
    move v3, p1

    .line 799
    .local v3, "begin":I
    :cond_1
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2f

    :try_start_0
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 800
    .local v4, "slash":I
    if-eq v4, v1, :cond_2

    if-le v4, v2, :cond_3

    .line 801
    :cond_2
    move v4, v2

    .line 803
    :cond_3
    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    add-int/lit8 v3, v4, 0x1

    .line 805
    if-ne v4, v2, :cond_1

    .line 811
    .end local v3    # "begin":I
    .end local v4    # "slash":I
    nop

    .line 812
    return-void

    .line 806
    :catch_0
    move-exception v1

    .line 807
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (must be a fully qualified class name in internal form): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 791
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "max":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (must not be null or empty)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static checkInternalName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 771
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;IILjava/lang/String;)V

    .line 772
    return-void
.end method

.method static checkMethodDesc(Ljava/lang/String;)V
    .locals 6
    .param p0, "desc"    # Ljava/lang/String;

    .line 897
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 900
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    const-string v3, "Invalid descriptor: "

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    .line 903
    const/4 v1, 0x1

    .line 904
    .local v1, "start":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x29

    if-eq v2, v4, :cond_2

    .line 906
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x56

    if-eq v2, v5, :cond_1

    .line 910
    invoke-static {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v1

    .line 911
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 907
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_2
    :goto_0
    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;IZ)I

    move-result v0

    .line 914
    .end local v1    # "start":I
    .local v0, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 917
    return-void

    .line 915
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    .end local v0    # "start":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid method descriptor (must not be null or empty)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkMethodIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 741
    const-string v0, "Invalid "

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 745
    const-string v1, "<init>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "<clinit>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 748
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 754
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 755
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (must be \'<init>\' or \'<clinit>\' or a valid Java identifier): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 749
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (must be a \'<init>\', \'<clinit>\' or a valid Java identifier): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_4
    :goto_1
    return-void

    .line 742
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (must not be null or empty)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static checkOpcode(II)V
    .locals 3
    .param p0, "opcode"    # I
    .param p1, "type"    # I

    .line 630
    if-ltz p0, :cond_0

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->TYPE:[I

    aget v0, v0, p0

    if-ne v0, p1, :cond_0

    .line 633
    return-void

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkSignedByte(ILjava/lang/String;)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 642
    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 646
    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (must be a signed byte): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkSignedShort(ILjava/lang/String;)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 655
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    .line 659
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (must be a signed short): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkUnsignedShort(ILjava/lang/String;)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 668
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    .line 672
    return-void

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (must be an unsigned short): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method checkEndCode()V
    .locals 2

    .line 609
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->endCode:Z

    if-nez v0, :cond_0

    .line 612
    return-void

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit instructions after visitMaxs has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkEndMethod()V
    .locals 2

    .line 618
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->endMethod:Z

    if-nez v0, :cond_0

    .line 621
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit elements after visitEnd has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V
    .locals 3
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "checkVisited"    # Z
    .param p3, "msg"    # Ljava/lang/String;

    .line 933
    const-string v0, "Invalid "

    if-eqz p1, :cond_2

    .line 937
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->labels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (must be visited first)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :cond_1
    :goto_0
    return-void

    .line 934
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (must not be null)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method checkStartCode()V
    .locals 2

    .line 600
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->startCode:Z

    if-eqz v0, :cond_0

    .line 603
    return-void

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit instructions before visitCode has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 319
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndMethod()V

    .line 320
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 321
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3

    .line 325
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndMethod()V

    .line 326
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Z)V

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 342
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndMethod()V

    .line 343
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 347
    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid attribute (must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitCode()V
    .locals 1

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->startCode:Z

    .line 351
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitCode()V

    .line 352
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 589
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndMethod()V

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->endMethod:Z

    .line 591
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitEnd()V

    .line 592
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 413
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 414
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkOpcode(II)V

    .line 415
    const-string v0, "owner"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "name"

    invoke-static {p3, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 418
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 469
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 470
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 471
    const-string v0, "Invalid variable index"

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    .line 472
    const-string v0, "Invalid increment"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkSignedShort(ILjava/lang/String;)V

    .line 473
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 474
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 355
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 356
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 357
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkOpcode(II)V

    .line 358
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 359
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 362
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 363
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 364
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkOpcode(II)V

    .line 365
    const-string v0, "Invalid operand"

    packed-switch p1, :pswitch_data_0

    .line 374
    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    const/16 v0, 0xb

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkSignedShort(ILjava/lang/String;)V

    .line 371
    goto :goto_0

    .line 367
    :pswitch_1
    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkSignedByte(ILjava/lang/String;)V

    .line 368
    nop

    .line 379
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 380
    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operand (must be an array type code T_...): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 440
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 441
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 442
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkOpcode(II)V

    .line 443
    const/4 v0, 0x0

    const-string v1, "label"

    invoke-virtual {p0, p2, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 444
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 445
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 448
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 449
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 450
    const/4 v0, 0x0

    const-string v1, "label"

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 451
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->labels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->labels:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->labels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 457
    return-void

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Already visited label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 460
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 461
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 462
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-nez v0, :cond_0

    .line 463
    invoke-static {p1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkConstant(Ljava/lang/Object;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 572
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 573
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 574
    const-string v0, "Invalid line number"

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    .line 575
    const/4 v0, 0x1

    const-string v1, "start label"

    invoke-virtual {p0, p2, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 576
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 577
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 556
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 557
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 558
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 560
    const-string v0, "start label"

    const/4 v1, 0x1

    invoke-virtual {p0, p4, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 561
    const-string v0, "end label"

    invoke-virtual {p0, p5, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 562
    const-string v0, "Invalid variable index"

    invoke-static {p6, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    .line 563
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->labels:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 564
    .local v0, "s":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->labels:Ljava/util/HashMap;

    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 565
    .local v1, "e":I
    if-lt v1, v0, :cond_0

    .line 568
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 569
    return-void

    .line 566
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid start and end labels (end must be greater than start)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 503
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 504
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 505
    const-string v0, "default label"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 506
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p2

    array-length v2, p3

    if-ne v0, v2, :cond_1

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 510
    aget-object v2, p3, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 513
    return-void

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be the same number of keys and labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitMaxs(II)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 580
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 581
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->endCode:Z

    .line 583
    const-string v0, "Invalid max stack"

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    .line 584
    const-string v0, "Invalid max locals"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    .line 585
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 586
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 428
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 429
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkOpcode(II)V

    .line 430
    const-string v0, "name"

    invoke-static {p3, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkMethodIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "clone"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "owner"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkMethodDesc(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 516
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 517
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 518
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 523
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 527
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v0

    if-gt p2, v1, :cond_0

    .line 531
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 532
    return-void

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimensions (must not be greater than dims(desc)): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimensions (must be greater than 0): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid descriptor (must be an array type descriptor): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 334
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndMethod()V

    .line 335
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    .line 336
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckAnnotationAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 482
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 483
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 484
    if-lt p2, p1, :cond_2

    .line 488
    const-string v0, "default label"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 489
    if-eqz p4, :cond_1

    array-length v0, p4

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_1

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 493
    aget-object v2, p4, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkLabel(Lorg/checkerframework/org/objectweb/asmx/Label;ZLjava/lang/String;)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 496
    return-void

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be max - min + 1 labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be greater than or equal to min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 540
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 541
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 542
    if-eqz p4, :cond_0

    .line 543
    const-string v0, "type"

    invoke-static {p4, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 392
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 393
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkOpcode(II)V

    .line 394
    const/16 v0, 0x5b

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    .line 395
    invoke-static {p2, v1}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    goto :goto_0

    .line 397
    :cond_0
    const-string v2, "type"

    invoke-static {p2, v2}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    const/16 v2, 0xbb

    if-ne p1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEW cannot be used to create arrays: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 404
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 383
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkStartCode()V

    .line 384
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkEndCode()V

    .line 385
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkOpcode(II)V

    .line 386
    const-string v0, "Invalid variable index"

    invoke-static {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->checkUnsignedShort(ILjava/lang/String;)V

    .line 387
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/CheckMethodAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 388
    return-void
.end method
