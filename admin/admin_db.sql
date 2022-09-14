
CREATE TABLE `client_profile` (
  `id` int(11) NOT NULL,
  `org_name` varchar(150) NOT NULL,
  `brand_name` varchar(60) NOT NULL,
  `slogan` text NOT NULL,
  `owner` varchar(50) NOT NULL,
  `office_addr` text NOT NULL,
  `primary_contact` varchar(13) NOT NULL,
  `contact_no` text NOT NULL,
  `website` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `org_type` varchar(100) NOT NULL,
  `kewords` text NOT NULL,
  `courses_offered` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `role`) VALUES
('admin', '123456', 'Portal Admin');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsid` int(11) NOT NULL,
  `news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addpin`
--

CREATE TABLE `tbl_addpin` (
  `id` int(11) NOT NULL,
  `cid` varchar(20) NOT NULL,
  `operation` varchar(100) NOT NULL,
  `nop` int(11) NOT NULL,
  `add_date` date NOT NULL,
  `op_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_profile`
--
ALTER TABLE `client_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsid`);

--
-- Indexes for table `tbl_addpin`
--
ALTER TABLE `tbl_addpin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_profile`
--
ALTER TABLE `client_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_addpin`
--
ALTER TABLE `tbl_addpin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

