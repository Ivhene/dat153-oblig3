.class public Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# instance fields
.field private final classname:Ljava/lang/String;

.field private p1v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;

.field private p2v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

.field private final p3avs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private final p3bvs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fully_qualified_classname"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3avs:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3bvs:Ljava/util/Map;

    .line 114
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->classname:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->flush()V

    .line 116
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;

    .line 197
    const-string v0, "\']:\n"

    const-string v1, " [\'"

    const-string v2, "\n"

    const-string v3, ".class"

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 198
    const-string v5, "JustIce by Enver Haase, (C) 2001-2002.\n<http://bcel.sourceforge.net>\n<http://commons.apache.org/bcel>\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_4

    .line 201
    :try_start_0
    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 202
    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 203
    .local v5, "dotclasspos":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 204
    aget-object v7, p0, v4

    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p0, v4

    .line 207
    .end local v5    # "dotclasspos":I
    :cond_0
    aget-object v5, p0, v4

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    .line 208
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Now verifying: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    aget-object v5, p0, v4

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v5

    .line 211
    .local v5, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v7

    .line 212
    .local v7, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pass 1:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v8

    move-object v7, v8

    .line 214
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pass 2:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v8, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v7, v8, :cond_1

    .line 216
    aget-object v8, p0, v4

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v8

    .line 217
    .local v8, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 218
    invoke-virtual {v5, v9}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3a(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v10

    move-object v7, v10

    .line 219
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pass 3a, method number "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 220
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v5, v9}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3b(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v10

    move-object v7, v10

    .line 222
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pass 3b, method number "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 223
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 222
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 226
    .end local v8    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v9    # "i":I
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Warnings:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getMessages()[Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "warnings":[Ljava/lang/String;
    array-length v9, v8

    if-nez v9, :cond_2

    .line 229
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "<none>"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :cond_2
    array-length v9, v8

    :goto_2
    if-ge v6, v9, :cond_3

    aget-object v10, v8, v6

    .line 232
    .local v10, "warning":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    .end local v10    # "warning":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 234
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->flush()V

    .line 237
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/Repository;->clearCache()V

    .line 238
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v5    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v7    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .end local v8    # "warnings":[Ljava/lang/String;
    goto :goto_3

    .line 239
    :catch_0
    move-exception v5

    .line 240
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 199
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 243
    .end local v4    # "k":I
    :cond_4
    return-void
.end method


# virtual methods
.method public doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p1v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p1v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p1v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v0

    return-object v0
.end method

.method public doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p2v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p2v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p2v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v0

    return-object v0
.end method

.method public doPass3a(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 3
    .param p1, "method_no"    # I

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3avs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    .line 87
    .local v1, "p3av":Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3avs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-direct {v2, p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;I)V

    move-object v1, v2

    .line 89
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3avs:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v2

    return-object v2
.end method

.method public doPass3b(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 3
    .param p1, "method_no"    # I

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3bvs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;

    .line 100
    .local v1, "p3bv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3bvs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 101
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;

    invoke-direct {v2, p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;I)V

    move-object v1, v2

    .line 102
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3bvs:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v2

    return-object v2
.end method

.method public flush()V
    .locals 1

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p1v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;

    .line 139
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p2v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    .line 140
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3avs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3bvs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    return-void
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p1v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->getMessages()[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "p1m":[Ljava/lang/String;
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 154
    .local v5, "element":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pass 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v5    # "element":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "p1m":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p2v:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->getMessages()[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "p2m":[Ljava/lang/String;
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 160
    .restart local v5    # "element":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pass 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v5    # "element":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v1    # "p2m":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3avs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\'): "

    const-string v5, " (\'"

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    .line 164
    .local v3, "pv":Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->getMessages()[Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "p3am":[Ljava/lang/String;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->getMethodNo()I

    move-result v7

    .line 166
    .local v7, "meth":I
    array-length v8, v6

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .line 167
    .local v10, "element":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pass 3a, method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->classname:Ljava/lang/String;

    .line 168
    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v12

    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 167
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v10    # "element":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 171
    .end local v3    # "pv":Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;
    .end local v6    # "p3am":[Ljava/lang/String;
    .end local v7    # "meth":I
    :cond_2
    goto :goto_2

    .line 172
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->p3bvs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;

    .line 173
    .local v3, "pv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->getMessages()[Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "p3bm":[Ljava/lang/String;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;->getMethodNo()I

    move-result v7

    .line 175
    .restart local v7    # "meth":I
    array-length v8, v6

    move v9, v2

    :goto_5
    if-ge v9, v8, :cond_4

    aget-object v10, v6, v9

    .line 176
    .restart local v10    # "element":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pass 3b, method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->classname:Ljava/lang/String;

    .line 177
    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v12

    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 176
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v10    # "element":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 180
    .end local v3    # "pv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Pass3bVerifier;
    .end local v6    # "p3bm":[Ljava/lang/String;
    .end local v7    # "meth":I
    :cond_4
    goto :goto_4

    .line 182
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
