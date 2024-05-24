.class public Lorg/checkerframework/org/apache/bcel/util/BCELifier;
.super Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;
.source "BCELifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;
    }
.end annotation


# static fields
.field private static final BASE_PACKAGE:Ljava/lang/String;

.field private static final CONSTANT_PREFIX:Ljava/lang/String;


# instance fields
.field private final _clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

.field private final _cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field private final _out:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lorg/checkerframework/org/apache/bcel/Const;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->BASE_PACKAGE:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/checkerframework/org/apache/bcel/Const;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->CONSTANT_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 71
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 73
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    .line 74
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 75
    return-void
.end method

.method static getJavaClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    move-object v1, v0

    .local v1, "java_class":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->parse()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 300
    :cond_0
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 284
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: BCELifier classname"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\tThe class must exist on the classpath"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->getJavaClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 289
    .local v0, "java_class":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/util/BCELifier;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/io/OutputStream;)V

    .line 290
    .local v1, "bcelifier":Lorg/checkerframework/org/apache/bcel/util/BCELifier;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->start()V

    .line 291
    return-void
.end method

.method static printArgumentTypes([Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;
    .locals 3
    .param p0, "arg_types"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 240
    array-length v0, p0

    if-nez v0, :cond_0

    .line 241
    const-string v0, "Type.NO_ARGS"

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "args":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 245
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 247
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Type[] { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private printCreate()V
    .locals 6

    .line 142
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v1, "  public void create(OutputStream out) throws IOException {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v0

    .line 144
    .local v0, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 145
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v2, "    createFields();"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v1

    .line 148
    .local v1, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 149
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    createMethod_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "();"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "    _cg.getJavaClass().dump(out);"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "  }"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 154
    return-void
.end method

.method static printFlags(I)Ljava/lang/String;
    .locals 1
    .param p0, "flags"    # I

    .line 201
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printFlags(ILorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printFlags(ILorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;)Ljava/lang/String;
    .locals 6
    .param p0, "flags"    # I
    .param p1, "location"    # Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    .line 212
    if-nez p0, :cond_0

    .line 213
    const-string v0, "0"

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "pow":I
    :goto_0
    const/16 v3, 0x4000

    if-gt v2, v3, :cond_6

    .line 217
    and-int v3, p0, v2

    if-eqz v3, :cond_5

    .line 218
    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    sget-object v3, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->CLASS:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    if-ne p1, v3, :cond_1

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACC_SUPER | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 220
    :cond_1
    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->METHOD:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    if-ne p1, v3, :cond_2

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACC_BRIDGE | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 222
    :cond_2
    const/16 v3, 0x80

    if-ne v2, v3, :cond_3

    sget-object v3, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->METHOD:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    if-ne p1, v3, :cond_3

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACC_VARARGS | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    :cond_3
    sget v3, Lorg/checkerframework/org/apache/bcel/Const;->ACCESS_NAMES_LENGTH:I

    if-ge v1, v3, :cond_4

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACC_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getAccessName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 228
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACC_BIT %x | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_5
    :goto_1
    shl-int/lit8 v2, v2, 0x1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 234
    .end local v1    # "i":I
    .end local v2    # "pow":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private printMain()V
    .locals 4

    .line 158
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "class_name":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v2, "  public static void main(String[] args) throws Exception {"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Creator creator = new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Creator();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    creator.create(new FileOutputStream(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class\"));"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v2, "  }"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method static printType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "signature"    # Ljava/lang/String;

    .line 260
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 261
    .local v0, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v1

    .line 262
    .local v1, "t":B
    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getTypeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 264
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    const-string v2, "Type.STRING"

    return-object v2

    .line 266
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Object"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    const-string v2, "Type.OBJECT"

    return-object v2

    .line 268
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.StringBuffer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    const-string v2, "Type.STRINGBUFFER"

    return-object v2

    .line 270
    :cond_3
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_4

    .line 271
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 272
    .local v2, "at":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new ArrayType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getDimensions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 275
    .end local v2    # "at":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new ObjectType(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 255
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->visitJavaClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 83
    return-void
.end method

.method public visitField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 5
    .param p1, "field"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 169
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    field = new FieldGen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printFlags(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", _cp);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getConstantValue()Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    move-result-object v0

    .line 172
    .local v0, "cv":Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    field.setInitValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v2, "    _cg.addField(field.getField());"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public visitJavaClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 11
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 88
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "class_name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "super_name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "package_name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getInterfaceNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->printArray([Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "inter":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 97
    :cond_0
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "import "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->BASE_PACKAGE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ".generic.*;"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ".classfile.*;"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".*;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v7, "import java.io.*;"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 102
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "public class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Creator {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v7, "  private InstructionFactory _factory;"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v7, "  private ConstantPoolGen    _cp;"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v7, "  private ClassGen           _cg;"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 107
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  public "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Creator() {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    _cg = new ClassGen(\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 109
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSourceFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 111
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAccessFlags()I

    move-result v7

    sget-object v8, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->CLASS:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    invoke-static {v7, v8}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printFlags(ILorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new String[] { "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " });"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 114
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v6, "    _cp = _cg.getConstantPool();"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v6, "    _factory = new InstructionFactory(_cg, _cp);"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v6, "  }"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 118
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printCreate()V

    .line 119
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v5

    .line 120
    .local v5, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v7, v5

    if-lez v7, :cond_3

    .line 121
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "  private void createFields() {"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v8, "    FieldGen field;"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    array-length v7, v5

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v5, v4

    .line 124
    .local v8, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v8, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 123
    .end local v8    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 129
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v4

    .line 130
    .local v4, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_4

    .line 131
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  private void createMethod_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "() {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    aget-object v8, v4, v7

    invoke-virtual {v8, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 133
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 136
    .end local v7    # "i":I
    :cond_4
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printMain()V

    .line 137
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public visitMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 6
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 182
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v0, p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/Method;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 183
    .local v0, "mg":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v2, "    InstructionList il = new InstructionList();"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    MethodGen method = new MethodGen("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAccessFlags()I

    move-result v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;->METHOD:Lorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;

    invoke-static {v3, v4}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printFlags(ILorg/checkerframework/org/apache/bcel/util/BCELifier$FLAGS;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 187
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printArgumentTypes([Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new String[] { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 188
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->printArray([Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " }, \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 189
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_clazz:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", il, _cp);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 191
    new-instance v1, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Ljava/io/PrintWriter;)V

    .line 192
    .local v1, "factory":Lorg/checkerframework/org/apache/bcel/util/BCELFactory;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->start()V

    .line 193
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "    method.setMaxStack();"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "    method.setMaxLocals();"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "    _cg.addMethod(method.getMethod());"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->_out:Ljava/io/PrintWriter;

    const-string v3, "    il.dispose();"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    return-void
.end method
